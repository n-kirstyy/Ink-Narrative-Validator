###################################################################################################################
##
##   ink_parser.py
##
##   Author: Claude AI (with some comments wriiten by Nadia Dodoo)
##
##   Purpose: Parser that extracts the Narrative Flow Graph Structure as defined by Verbrugge (2003) in
##            "A Structure for Modern Computer Narratives" from an Ink JSON file.
##
##   Additional Info: Verbrugge defines an NFG as a 4-tuple: (H, a, w, ℓ) where:
##                      H = (V, E, C, L, Lv, Le) is a context hypergraph
##                      a ∈ V is the axiom (starting node)
##                      w, ℓ ∈ V are terminal nodes (endings)
##
###################################################################################################################

import sys
import os
import json
from NFG import NFG, Hyperedge


def build_nfg(filepath: str) -> NFG:
    """Extracts the NFG structure from a provided JSON file exported from Ink.

        Arg:
            filepath: The filepath of the JSON file
                
        Returns:
            A fully constructed NFG object.

        Raises:
            ValueError: If no knots are found or START is absent.
            json.JSONDecodeError: If the file is not valid JSON.
    """
    with open(filepath, "r", encoding="utf-8") as f:
        ink_data = json.load(f)

    knots = extract_knots(ink_data["root"])

    if not knots:
        raise ValueError("No vertices (knots) found in Ink JSON")

    #Identify terminals before building hyperedges so terminal knots are not given outgoing edges
    terminals = {
        name for name, content in knots.items()
        if is_terminal(content)
    }

    #Filter out Ink internal knots that are not narrative states
    INTERNAL_KNOTS = {"global decl"}
    vertices = {k for k in knots if k not in INTERNAL_KNOTS}
    terminals = terminals & vertices

    # Identify knots with an end token but also optional outgoing diverts. T
    soft_terminals = {
        name for name, content in knots.items()
        if name in vertices
        and name not in terminals
        and has_end_token(content)
    }

    # Build hyperedges for every narrative knot (non-terminal)
    hyperedges: list[Hyperedge] = []
    for knot_name in vertices:
        if knot_name in terminals:
            continue
        knot_content = knots[knot_name]
        hyperedges.extend(extract_hyperedges(knot_name, knot_content))

    axiom = find_axiom(vertices)

    return NFG(vertices, hyperedges, axiom, terminals, soft_terminals)



### Vertex extraction (V)
def extract_knots(content, depth: int = 0, max_depth: int = 10) -> dict:
    """Recursively extracts all knots from the Ink JSON. Knots are the top-level narrative sections in Ink. 
        Args:
            content: The JSON structure to search.
            depth: Current recursion depth (prevents infinite loops).
            max_depth: Maximum recursion depth permitted.

        Returns:
            Dictionary mapping {knot_name: knot_content}.
    """
    if depth > max_depth:
        return {}

    knots = {}

    if isinstance(content, dict):
        for key, value in content.items():
            if key.startswith("#") or key.startswith("c-") or key in ("listDefs", "inkVersion"):
                continue
            if isinstance(value, list) and not key.startswith("."):
                knots[key] = value
            elif isinstance(value, (dict, list)):
                knots.update(extract_knots(value, depth + 1, max_depth))

    elif isinstance(content, list):
        for item in content:
            if isinstance(item, (dict, list)):
                knots.update(extract_knots(item, depth + 1, max_depth))

    return knots



### Terminal identification
def is_terminal(content) -> bool:
    """Returns True if the knot is a terminal node. 
        A knot is terminal when it contains an explicit end/done token and has no outgoing diverts to other knots.

        Args:
            content: Raw knot content.

        Returns:
            True if the knot is a terminal node.
    """
    destinations = set()
    find_all_diverts(content, destinations)
    has_outgoing = len(destinations) > 0

    if has_outgoing:
        return False  # still has paths forward — not terminal

    return has_end_token(content)


def has_end_token(content) -> bool:
    """Returns True if content contains an explicit end/done token anywhere.
        Args:
            content: Raw knot content.

        Returns:
            True if an end/done token is present.
    """
    END_TOKENS = {"end", "END", "done", "DONE"}

    if isinstance(content, list):
        if any(isinstance(item, str) and item in END_TOKENS for item in content):
            return True
        return any(has_end_token(item) for item in content)

    if isinstance(content, dict):
        return any(has_end_token(v) for v in content.values())

    return False


def find_all_diverts(content, destinations: set):
    """Recursively collects all valid divert destinations in content."""
    if isinstance(content, dict):
        if "->" in content:
            dest = clean_divert(content["->"])
            if dest:
                destinations.add(dest)
        for v in content.values():
            find_all_diverts(v, destinations)
    elif isinstance(content, list):
        for item in content:
            find_all_diverts(item, destinations)



###Axiom identification
def find_axiom(vertices: set) -> str:
    """Returns the axiom node, always 'START' in Ink narratives.
        Args:
            vertices: Set of all knot names.
        Returns:
            'START'
        Raises:
            ValueError: If no START knot exists.
    """
    if "START" not in vertices:
        raise ValueError("No START node found — invalid Ink narrative")
    return "START"



### Hyperedge extraction (E)
def extract_hyperedges(source: str, knot_content) -> list[Hyperedge]:
    """Extracts all hyperedges originating from a given knot.
        Each Ink choice branch produces one Hyperedge. Unconditional diverts produce Hyperedges with no conditions or
        assignments. 

        Args:
            source: Name of the source knot.
            knot_content: Raw content of the knot.

        Returns:
            List of Hyperedge objects for all transitions from this knot.
    """
    hyperedges = []

    #Walk the knot looking for choice clusters and bare diverts
    walk_for_hyperedges(source, knot_content, hyperedges)

    return hyperedges


def walk_for_hyperedges(source: str, content, hyperedges: list, inside_choice: bool = False):
    """Recursively walks knot content to find and parse all transitions.

        Handles two cases:
        1.Choice clusters: a dict containing c-N keys, preceded in the parent list by ev.../ev evaluation blocks keyed by choice index.
        2.Bare diverts: {"->": "destination"} outside any choice block, representing unconditional transitions.

    Args:
        source: Source knot name for all edges found here.
        content: Current content node being walked.
        hyperedges: List to append found Hyperedge objects to.
        inside_choice: True when currently inside a c-N branch body (prevents bare diverts inside branches from being double-counted).
    """
    if isinstance(content, list):
        #Look for a choice cluster dict in this list
        choice_cluster = find_choice_cluster(content)

        if choice_cluster is not None:
            #Extract per-choice conditions from the ev blocks in this list
            conditions_by_index = extract_conditions_by_index(content)

            for key, branch_content in choice_cluster.items():
                if not (isinstance(key, str) and key.startswith("c-")):
                    continue
                idx = int(key.split("-")[1])
                conditions = conditions_by_index.get(idx, [])
                # Also extract conditions from inside the branch body (VAR? check compiled inline)
                if not conditions:
                    conditions = extract_conditions_from_branch(branch_content)
                assignments = extract_assignments(branch_content)
                destination = extract_first_divert(branch_content)

                if destination:
                    hyperedges.append(Hyperedge(
                        source=source,
                        destination=destination,
                        conditions=conditions,
                        assignments=assignments,
                    ))
                #If no destination, branch ends inline (e.g. -> END; handled by terminal detection)

        else:
            #No choice cluster so check for bare unconditional diverts only at this list level
            if not inside_choice:
                for item in content:
                    if isinstance(item, dict) and "->" in item:
                        dest = clean_divert(item["->"])
                        if dest:
                            hyperedges.append(Hyperedge(
                                source=source,
                                destination=dest,
                            ))
                    elif isinstance(item, (list, dict)):
                        walk_for_hyperedges(source, item, hyperedges, inside_choice=False)

    elif isinstance(content, dict):
        #Recurse into dict values (handles nested knot structures)
        for value in content.values():
            walk_for_hyperedges(source, value, hyperedges, inside_choice)


def find_choice_cluster(lst: list) -> dict | None:
    """Finds the choices dict (containing c-N keys) within a list, if any.
        In Ink JSON, all choice branches for a knot are collected into a single
        dict at the end of the knot's inner list. This function locates that
        dict.

        Args:
            lst: A list from the knot content.

        Returns:
            The choices dict if found, otherwise None.
    """
    for item in lst:
        if isinstance(item, dict):
            if any(k.startswith("c-") for k in item):
                return item
    return None



# Per-choice condition extraction
def extract_conditions_from_branch(branch_content) -> list[tuple[str, bool]]:
    """Extracts VAR? conditions compiled inside a c-N branch body.
        Ink compiles inline choice conditions { var } as a VAR? check followed by
        'out' inside the branch body, rather than in the preceding ev block.
        Pattern: ["ev", {"VAR?": "var_name"}, "out", "/ev", ...]

        Args:
            branch_content: The content list of a c-N branch.

        Returns:
            List of (variable_name, required_value) tuples, or empty list if none found.
    """
    conditions = []
    if not isinstance(branch_content, list):
        return conditions

    i = 0
    while i < len(branch_content):
        item = branch_content[i]
        if item == "ev":
            # Look ahead for VAR? followed by "out"
            j = i + 1
            while j < len(branch_content) and branch_content[j] != "/ev":
                if isinstance(branch_content[j], dict) and "VAR?" in branch_content[j]:
                    var_name = branch_content[j]["VAR?"]
                    # Check for negation: "!" immediately after
                    negated = (j + 1 < len(branch_content) and branch_content[j + 1] == "!")
                    # Confirm it's a condition (followed by "out" somewhere before /ev)
                    rest = branch_content[j+1:branch_content.index("/ev", j) if "/ev" in branch_content[j:] else len(branch_content)]
                    if "out" in rest:
                        conditions.append((var_name, not negated))
                j += 1
        i += 1

    return conditions


def extract_conditions_by_index(lst: list) -> dict[int, list[tuple[str, bool]]]:
    """Extracts variable conditions for each choice, keyed by choice index.
        Args:
            lst: The outer knot list containing ev blocks and choice markers.

        Returns:
            Dictionary mapping {choice_index: [(var_name, required_value), ...]}
    """
    conditions_by_index: dict[int, list[tuple[str, bool]]] = {}

    i = 0
    while i < len(lst):
        item = lst[i]

        #Locate an ev block
        if item == "ev":
            ev_start = i
            #Find the matching /ev
            ev_end = find_closing(lst, i, "ev", "/ev")
            if ev_end is None:
                i += 1
                continue

            ev_block = lst[ev_start + 1: ev_end]

            #The choice marker immediately follows /ev
            marker_idx = ev_end + 1
            if marker_idx < len(lst):
                marker = lst[marker_idx]
                choice_index = choice_index_from_marker(marker)

                if choice_index is not None:
                    conditions = parse_conditions_from_ev(ev_block)
                    if conditions:
                        conditions_by_index[choice_index] = conditions

            i = ev_end + 1
        else:
            i += 1

    return conditions_by_index


def find_closing(lst: list, open_idx: int, open_tok: str, close_tok: str) -> int | None:
    """Finds the index of the matching closing token for a bracketed block.

        Args:
            lst: The list to search.
            open_idx: Index of the opening token.
            open_tok: The opening token string (e.g. 'ev').
            close_tok: The closing token string (e.g. '/ev').

        Returns:
            Index of the closing token, or None if not found.
    """
    depth = 0
    for i in range(open_idx, len(lst)):
        if lst[i] == open_tok:
            depth += 1
        elif lst[i] == close_tok:
            depth -= 1
            if depth == 0:
                return i
    return None


def choice_index_from_marker(marker) -> int | None:
    """Extracts the choice index N from a {"*": ".^.c-N", "flg": ...} marker.
        Args:
            marker: A candidate choice marker object.

        Returns:
            The integer choice index, or None if marker is not a choice marker.
    """
    if not isinstance(marker, dict):
        return None
    
    ref = marker.get("*", "")

    if not isinstance(ref, str) or "c-" not in ref:
        return None
    
    try:
        return int(ref.split("c-")[-1])
    except ValueError:
        return None


def parse_conditions_from_ev(ev_block: list) -> list[tuple[str, bool]]:
    """Parses variable conditions from the contents of an ev.../ev block.
        Args:
            ev_block: The list of tokens between 'ev' and '/ev'.

        Returns:
            List of (variable_name, required_value) tuples.
    """
    conditions = []
    i = 0
    while i < len(ev_block):
        item = ev_block[i]
        if isinstance(item, dict) and "VAR?" in item:
            var_name = item["VAR?"]
            # Check for negation immediately following
            negated = (i + 1 < len(ev_block) and ev_block[i + 1] == "!")
            conditions.append((var_name, not negated))
            i += 2 if negated else 1
        else:
            i += 1
    return conditions



### Branch body extraction (assignments and destination)
def extract_assignments(branch_content) -> dict[str, bool]:
    """Extracts variable assignments from a c-N branch body.
        Args:
            branch_content: The content list of a c-N branch.

        Returns:
            Dictionary mapping {variable_name: assigned_bool_value}.
    """
    assignments = {}
    find_assignments(branch_content, assignments)
    return assignments


def find_assignments(content, assignments: dict):
    """Recursively searches content for VAR= assignment patterns."""
    if isinstance(content, list):
        for i, item in enumerate(content):
            if isinstance(item, dict) and "VAR=" in item:
                var_name = item["VAR="]
                value = resolve_bool(content, i)
                if value is not None:
                    assignments[var_name] = value
            elif isinstance(item, (list, dict)):
                find_assignments(item, assignments)

    elif isinstance(content, dict):
        for v in content.values():
            find_assignments(v, assignments)


def resolve_bool(lst: list, idx: int) -> bool | None:
    """Resolves the boolean value being assigned at lst[idx].
        Args:
            lst: The list containing the VAR= dict.
            idx: Index of the VAR= dict.

        Returns:
            The boolean value, or None if pattern not recognised.
    """
    # Pattern 1: choice block — '/ev' sits immediately before VAR=
    if idx >= 2 and lst[idx - 1] == "/ev" and isinstance(lst[idx - 2], bool):
        return lst[idx - 2]
    # Pattern 2: global decl — bare boolean immediately before VAR=
    if idx >= 1 and isinstance(lst[idx - 1], bool):
        return lst[idx - 1]
    return None


def extract_first_divert(branch_content) -> str | None:
    """Extracts the first valid divert destination from a c-N branch body.

    Args:
        branch_content: The content list of a c-N branch.

    Returns:
        The destination knot name, or None if the branch has no outgoing
        divert (e.g. it ends with 'end').
    """
    result = []
    find_divert(branch_content, result)
    return result[0] if result else None


def find_divert(content, result: list):
    """Recursively finds the first divert in content."""
    if result:
        return
    if isinstance(content, dict):
        if "->" in content:
            dest = clean_divert(content["->"])
            if dest:
                result.append(dest)
                return
        for v in content.values():
            find_divert(v, result)
    elif isinstance(content, list):
        for item in content:
            find_divert(item, result)


def clean_divert(dest: str) -> str | None:
    """Cleans and validates a raw divert destination string.

        Filters out Ink internal targets (done, end) and relative path
        references (starting with '.').

        Args:
            dest: Raw destination string from a {"->"} dict.

        Returns:
            Clean knot name, or None if the destination is internal/invalid.
    """
    if not isinstance(dest, str):
        return None
    dest = dest.split(".")[0].strip("^")
    if dest and dest.lower() not in ("done", "end") and not dest.startswith("."):
        return dest
    return None





### Main execution
if __name__ == "__main__":
    if len(sys.argv) >= 2:
        filepath = sys.argv[1]
    else:
        filepath = input("Enter path to Ink JSON file: ").strip()
        filepath = filepath.strip('"').strip("'")

    if not os.path.exists(filepath):
        print(f"\nERROR: File '{filepath}' not found")
        sys.exit(1)

    try:
        nfg = build_nfg(filepath)
        print(f"\nSuccessfully parsed: {filepath}")
        print(nfg.summary())

    except json.JSONDecodeError as e:
        print("\nERROR: Invalid JSON file")
        print(f"Details: {e}")
        sys.exit(1)
    except ValueError as e:
        print(f"\nERROR: {e}")
        sys.exit(1)
    except Exception as e:
        print("\nERROR: Failed to parse file")
        print(f"Details: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)