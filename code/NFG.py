from dataclasses import dataclass, field


@dataclass
class Hyperedge:
    """A single directed hyperedge in the Narrative Flow Graph.
        Represents one narrative transition i.e., a choice branch that moves the
        story from a source knot to a destination knot.
    """

    source: str   #knot this transition originates from
    destination: str    #knot this transition leads to
    conditions: list[tuple[str, bool]] = field(default_factory=list)  #variabes on this transition needed for it to be available
    assignments: dict[str, bool] = field(default_factory=dict)  #variable assignments made when this transition is taken
    context: list[tuple[str, bool]] = field(default_factory=list)
    #condition variable is a context relation (C) for this edge when it appears in conditions but not in assignments 
    #i.e. it is checked for the transition but not consumed/modified by it

    def __post_init__(self):
        """Derives context relations from conditions and assignments.
        """
        assigned_vars = set(self.assignments.keys())
        self.context = [
            (var, required_value)
            for var, required_value in self.conditions
            if var not in assigned_vars
        ]

    @property
    def tail(self) -> tuple[str, list[tuple[str, bool]]]:
        """Returns the tail of this hyperedge.
        """
        return (self.source, self.conditions)

    @property
    def head(self) -> str:
        """Returns the head of this hyperedge (destination knot name).
        """
        return self.destination

    @property
    def is_conditional(self) -> bool:
        """Returns True if this transition has any variable guards."""
        return len(self.conditions) > 0

    @property
    def is_context_only(self) -> bool:
        """Returns True if all conditions are context relations.

        A fully context-only transition reads world state to determine
        availability but does not modify any state on firing.
        """
        return len(self.conditions) > 0 and len(self.assignments) == 0

    def __repr__(self) -> str:
        parts = [f"{self.source} -> {self.destination}"]
        if self.conditions:
            cond_str = ", ".join(
                f"{'not ' if not v else ''}{var}"
                for var, v in self.conditions
            )
            parts.append(f"conditions=[{cond_str}]")
        if self.assignments:
            assign_str = ", ".join(
                f"{var}={v}" for var, v in self.assignments.items()
            )
            parts.append(f"assignments=[{assign_str}]")
        if self.context:
            ctx_str = ", ".join(
                f"{'not ' if not v else ''}{var}"
                for var, v in self.context
            )
            parts.append(f"context=[{ctx_str}]")
        return f"Hyperedge({', '.join(parts)})"


class NFG:
    """An adaptation of the Narrative Flow Graph defined by Verbrugge (2003).
        Models a branching interactive narrative as a context hypergraph with designated start and end nodes, 
        derived from a simplified form of 1-Safe Petri Net.

        The components of the NFG are:
        V  — vertices: All narrative states (knot names in Ink).
        E  — hyperedges: Transitions between states, each carrying condition
                        and assignment metadata on variable world state (hyperedge objects).
        a  — axiom: The designated starting node (name of the knot denoted as 'START' in Ink).
        w,ℓ — terminals: Designated ending nodes. This study uses a Simple NFG (Definition 7) where w = ℓ, treating all
                        endings equally since winnability is not a focus.
        C  — context: Derived per-edge from Hyperedge.context — the subset of tail nodes that are required but not
                        consumed by each transition. 
    """

    def __init__(self, vertices: set[str], hyperedges: list[Hyperedge], axiom: str, terminals: set[str], soft_terminals: set[str] = None):
        """Initialises the NFG with its core components.
            Args:
                vertices: Set of all knot names.
                hyperedges: List of Hyperedge objects for all transitions.
                axiom: Name of the start knot.
                terminals: Set of proper terminal knot names i.e., knots with an explicit end/done token and no outgoing diverts.
                soft_terminals: Set of soft terminal knot names i.e., knots that contain an end/done token but also have outgoing
                                diverts. This means the author provided an optional ending here, so they are valid stopping points
                                but not proper terminals as defined by Verbrugge.
        """
        self.vertices = vertices
        self.hyperedges = hyperedges
        self.axiom = axiom
        self.terminals = terminals
        self.soft_terminals = soft_terminals if soft_terminals is not None else set()


    def edges_from(self, knot: str) -> list[Hyperedge]:
        """Returns all hyperedges originating from the given knot.
            Args:
                knot: Source knot name.

            Returns:
                List of Hyperedge objects whose source is knot.
        """
        return [h for h in self.hyperedges if h.source == knot]

    def edges_to(self, knot: str) -> list[Hyperedge]:
        """Returns all hyperedges leading to the given knot.
            Args:
                knot: Destination knot name.

            Returns:
                List of Hyperedge objects whose destination is knot.
        """
        return [h for h in self.hyperedges if h.destination == knot]

    def destinations_from(self, knot: str) -> list[str]:
        """Returns the destination knot names reachable from a given knot.
            Used traversal algorithms that only need reachability without edge metadata.

            Args:
                knot: Source knot name.

            Returns:
                List of destination knot names.
        """
        return [h.destination for h in self.edges_from(knot)]

    def context_edges(self) -> list[Hyperedge]:
        """Returns all hyperedges that have at least one context relation.

            Returns:
                List of Hyperedge objects where context is non-empty.
        """
        return [h for h in self.hyperedges if h.context]



    def __repr__(self) -> str:
        return (
            f"NFG("
            f"vertices={len(self.vertices)}, "
            f"hyperedges={len(self.hyperedges)}, "
            f"axiom='{self.axiom}', "
            f"terminals={self.terminals}, "
            f"soft_terminals={self.soft_terminals})"
        )

    def summary(self) -> str:
        """Returns a summary of the NFG structure."""
        lines = [
            "Narrative Flow Graph Summary",
            "=" * 60,
            f"Vertices       ({len(self.vertices)}): {sorted(self.vertices)}",
            f"Axiom:          {self.axiom}",
            f"Terminals      ({len(self.terminals)}): {sorted(self.terminals)}",
            f"Soft terminals ({len(self.soft_terminals)}): {sorted(self.soft_terminals)}",
            f"Hyperedges     ({len(self.hyperedges)}):"
        ]
        for h in sorted(self.hyperedges, key=lambda e: (e.source, e.destination)):
            lines.append(f"  {h}")
        context_edges = self.context_edges()
        if context_edges:
            lines.append(f"Context relations ({len(context_edges)} edges):")
            for h in context_edges:
                lines.append(f"  {h.source} -> {h.destination}: {h.context}")
        else:
            lines.append("Context relations: none")
        lines.append("=" * 60)
        return "\n".join(lines)
