###################################################################################################################
##
##   contradiction_validation.py
##
##   Author: Nadia Kirsty Dodoo
##
##   Purpose: Detects contradictions present in paths
##
###################################################################################################################
import time
import tracemalloc
import psutil
from collections import defaultdict
from NFG import NFG
from traversal_algorithms import nfg_bfs


def check_unsatisfiable_edges(nfg: NFG) -> list[dict]:
    """Detects edges whose condition list requires the same variable both ways."""
    contradictions = []
    for edge in nfg.hyperedges:
        var_requirements: dict[str, set[bool]] = {}
        for var, required_value in edge.conditions:
            var_requirements.setdefault(var, set())
            var_requirements[var].add(required_value)
        for var, values in var_requirements.items():
            if (True in values) and (False in values):
                contradictions.append({
                    "source": edge.source,
                    "dest": edge.destination,
                    "variable": var
                })
    return contradictions


def compute_live_vars(nfg: NFG) -> dict[str, set[str]]:
    """Computes the set of condition variables that are still reachable from each node.

        A variable is live at a node if there exists at least one path forward
        from that node that reaches an edge conditioned on that variable. If no path like that exists, 
        it cannot influence any future conflict detection and can be dropped from the state key.

        Args:
            nfg: NFG object.

        Returns:
            Dictionary mapping each node name to its set of live condition variables.
    """
    #build reverse adjacency
    reverse: dict[str, list[str]] = {v: [] for v in nfg.vertices}
    for edge in nfg.hyperedges:
        if edge.destination in reverse:
            reverse[edge.destination].append(edge.source)

    live_vars: dict[str, set[str]] = {v: set() for v in nfg.vertices}

    #group condition edges by variable
    var_to_sources: dict[str, set[str]] = defaultdict(set)
    for edge in nfg.hyperedges:
        for var, _ in edge.conditions:
            var_to_sources[var].add(edge.source)

    #for each variable, backward BFS from its conditioning edge sources
    for var, sources in var_to_sources.items():
        visited = set(sources)
        queue = list(sources)
        while queue:
            node = queue.pop()
            live_vars[node].add(var)
            for pred in reverse.get(node, []):
                if pred not in visited:
                    visited.add(pred)
                    queue.append(pred)

    return live_vars


def traverse_paths(nfg: NFG, live_vars: dict[str, set[str]]) -> list[dict]:
    """Traverses paths from the axiom tracking variable state.

        Uses global (node, variable_state) pairs as visited keys, skipping any nodes already 
        visited.

        At each node, the state key is restricted to variables thatmare live there 
        since those that aren't can't influence any future edge condition 
        
        Args:
            nfg: NFG object.
            live_vars: Per-node live variable sets from compute_live_vars().

        Returns:
            List of conflict dicts, each describing a dead branch or blocked edge.
    """
    conflicts = []

    visited_states: set[tuple] = set()
    stack = [(nfg.axiom, {})]

    while stack:
        current, state = stack.pop()

        # State key uses only variables live at this node 
        node_live = live_vars.get(current, set())
        relevant_state = {k: v for k, v in state.items() if k in node_live}
        state_key = (current, frozenset(relevant_state.items()))
        if state_key in visited_states:
            continue
        visited_states.add(state_key)

        outgoing = nfg.edges_from(current)
        if not outgoing:
            continue

        dead_edges = []
        live_exists = False

        for edge in outgoing:
            edge_dead = False
            dead_var = None
            required = None
            actual = None

            for var, required_value in edge.conditions:
                if var in state and state[var] != required_value:
                    edge_dead = True
                    dead_var = var
                    required = required_value
                    actual = state[var]
                    break

            if edge_dead:
                dead_edges.append((edge.destination, dead_var, required, actual))
            else:
                live_exists = True
                if edge.destination in nfg.vertices:
                    new_state = dict(state)
                    new_state.update(edge.assignments)
                    stack.append((edge.destination, new_state))

        all_dead = bool(dead_edges) and not live_exists

        for dest, var, required, actual in dead_edges:
            conflicts.append({
                "node": current,
                "dest": dest,
                "variable": var,
                "required": required,
                "actual": actual,
                "all_dead": all_dead
            })

    return conflicts


def check_path_conflicts(nfg: NFG, live_vars: dict[str, set[str]]) -> tuple[list[dict], list[str], list[str]]:
    """Derives dead branches, state dead ends, and state-caused unreachable nodes."""
    raw = traverse_paths(nfg, live_vars)

    #condition_vars for the clean reachability pass
    condition_vars: set[str] = set()
    for edge in nfg.hyperedges:
        for var, _ in edge.conditions:
            condition_vars.add(var)

    seen_branches = set()
    dead_branches = []
    state_dead_end_nodes = set()

    for c in raw:
        key = (c["node"], c["dest"], c["variable"])
        if key not in seen_branches:
            seen_branches.add(key)
            dead_branches.append({
                "node": c["node"],
                "dest": c["dest"],
                "variable": c["variable"],
                "required": c["required"],
                "actual": c["actual"]
            })
        if c["all_dead"]:
            state_dead_end_nodes.add(c["node"])

    state_dead_ends = sorted(state_dead_end_nodes)

    #State-caused unreachable node: reachable structurally but not via clean paths
    reachable_clean: set[str] = {nfg.axiom}
    visited_clean: set[tuple] = set()
    stack = [(nfg.axiom, {})]

    while stack:
        current, state = stack.pop()
        node_live = live_vars.get(current, set())
        relevant = {k: v for k, v in state.items() if k in node_live}
        state_key = (current, frozenset(relevant.items()))
        if state_key in visited_clean:
            continue
        visited_clean.add(state_key)

        for edge in nfg.edges_from(current):
            edge_dead = any(
                var in state and state[var] != req
                for var, req in edge.conditions
            )
            if edge_dead:
                continue
            if edge.destination in nfg.vertices:
                reachable_clean.add(edge.destination)
                new_state = dict(state)
                new_state.update(edge.assignments)
                stack.append((edge.destination, new_state))

    structurally_reachable = nfg_bfs(nfg)
    excluded = nfg.terminals | nfg.soft_terminals
    state_unreachable = sorted((structurally_reachable - reachable_clean) - excluded)

    return dead_branches, state_dead_ends, state_unreachable


def check_contradictions(nfg: NFG) -> dict:
    """Detects state contradictions in the NFG using path-sensitive analysis."""
    psutil.cpu_percent(interval=None)
    tracemalloc.start()
    start_time = time.time()

    unsatisfiable = check_unsatisfiable_edges(nfg)
    live_vars = compute_live_vars(nfg)
    dead_branches, state_dead_ends, state_unr = check_path_conflicts(nfg, live_vars)

    runtime = time.time() - start_time
    memory_peak = tracemalloc.get_traced_memory()[1]
    tracemalloc.stop()
    cpu_usage = psutil.cpu_percent(interval=None)

    detected = bool(unsatisfiable) or bool(dead_branches) or bool(state_dead_ends) or bool(state_unr)

    return {
        "Issue Type": "State Contradiction",
        "Detected": detected,
        "Unsatisfiable Edge Count": len(unsatisfiable),
        "Unsatisfiable Edges": unsatisfiable,
        "Dead Branch Count": len(dead_branches),
        "Dead Branches": dead_branches,
        "State Dead End Count": len(state_dead_ends),
        "State Dead Ends": state_dead_ends,
        "Conditionally Unreachable": state_unr,
        "Runtime": runtime,
        "Memory Peak(kb)": memory_peak / 1024,
        "Cpu Percent": cpu_usage
    }
