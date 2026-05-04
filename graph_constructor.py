###################################################################################################################
##
##   graph_constructor.py
##
##   Author: Claude AI (with some comments wriiten by Nadia Dodoo)
##
##   Purpose: Converts parsed Ink narrative into NetworkX directed graph
##
###################################################################################################################
import sys
import os
import networkx as nx
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

from ink_parser import build_nfg
from NFG import NFG


def build_graph(nfg: NFG) -> nx.DiGraph:
    """Builds a NetworkX directed graph from an NFG object.
        Each Hyperedge in the NFG becomes a directed edge in the graph.
        Edge attributes carry the full hyperedge metadata so downstream
        functions can distinguish conditional, context-bearing, and plain
        transitions without re-parsing.

        Edge attributes stored:
        - context (bool): True if this edge has at least one context relation (variable required but not consumed)
        - conditional (bool): True if this edge has any variable conditions
        - conditions (list): The full conditions list from the Hyperedge
        - assignments (dict): The full assignments dict from the Hyperedge

        NB: Where multiple Hyperedges connect the same source-destination
        pair, the NetworkX DiGraph stores only one edge between that pair. 
        The edge attributes reflect the FIRST such hyperedge encountered. This is the
        limitation of using a simple DiGraph for visualisation.

        Args:
            nfg: NFG object produced by ink_parser.

        Returns:
            NetworkX DiGraph representing the narrative structure.
    """
    G = nx.DiGraph()

    #Add all vertices as nodes, tagging their role
    for vertex in nfg.vertices:
        if vertex == nfg.axiom:
            role = "axiom"
        elif vertex in nfg.terminals:
            role = "terminal"
        elif vertex in nfg.soft_terminals:
            role = "soft_terminal"
        else:
            role = "state"
        G.add_node(vertex, role=role)

    #Add edges from hyperedges, carrying metadata as attributes
    for edge in nfg.hyperedges:
        if edge.destination not in nfg.vertices:
            continue

        # If edge already exists, upgrade context/conditional flags if the new edge warrants it
        if G.has_edge(edge.source, edge.destination):
            if edge.context:
                G[edge.source][edge.destination]['context'] = True
            if edge.is_conditional:
                G[edge.source][edge.destination]['conditional'] = True
        else:
            G.add_edge(
                edge.source,
                edge.destination,
                context=bool(edge.context),
                conditional=edge.is_conditional,
                conditions=edge.conditions,
                assignments=edge.assignments,
            )

    return G


def print_graph_stats(G: nx.DiGraph, nfg: NFG):
    """Prints statistics about the constructed graph.
        Args:
            G: NetworkX directed graph.
            nfg: NFG object
    """
    print("\n" + "=" * 60)
    print("Graph Statistics")
    print("=" * 60)

    print(f"Total nodes: {G.number_of_nodes()}")
    print(f"Total edges: {G.number_of_edges()}")

    print(f"\nAxiom (start):          {nfg.axiom}")
    print(f"Terminal nodes (end):   {sorted(nfg.terminals)}")
    print(f"Soft terminal nodes:    {sorted(nfg.soft_terminals)}")

    context_edge_count = sum(
        1 for _, _, d in G.edges(data=True) if d.get('context')
    )
    conditional_edge_count = sum(
        1 for _, _, d in G.edges(data=True) if d.get('conditional')
    )
    if context_edge_count:
        print(f"Context edges:          {context_edge_count}")
    if conditional_edge_count:
        print(f"Conditional edges:      {conditional_edge_count}")

    # Connectivity
    if nx.is_weakly_connected(G):
        print("\nGraph is weakly connected (all nodes reachable ignoring direction)")
    else:
        num_components = nx.number_weakly_connected_components(G)
        print(f"\nGraph has {num_components} weakly connected components")

    # Cycles
    cycles = list(nx.simple_cycles(G))
    if cycles:
        print(f"\nGraph contains {len(cycles)} cycle(s)")
        if len(cycles) <= 5:
            for i, cycle in enumerate(cycles, 1):
                print(f"  Cycle {i}: {' -> '.join(cycle)} -> {cycle[0]}")
    else:
        print("\nGraph is acyclic (DAG)")

    print("=" * 60)


def visualise_graph(G: nx.DiGraph, nfg: NFG, output_path: str = "narrative_graph.png"):
    """Creates and saves a visualisation of the narrative graph.

        Node colours indicate role:
          - Green: Axiom (start)
          - Red: Hard terminal (end with no outgoing transitions)
          - Yellow: Soft terminal (optional ending, has outgoing transitions)
          - Light blue: Regular state node

        Edge styles indicate transition type:
          - Solid dark: Regular unconditional transition
          - Solid purple: Conditional transition (variable guard present)
          - Dashed orange: Context-bearing transition (variable required but not consumed)

        Args:
            G: NetworkX directed graph from build_graph.
            nfg: NFG object 
            output_path: File path for the saved PNG image.
    """
    plt.figure(figsize=(14, 9))

    pos = nx.spring_layout(G, k=2, iterations=50, seed=42)

    # Partition nodes by role
    axiom_nodes         = [nfg.axiom]
    terminal_nodes      = list(nfg.terminals)
    soft_terminal_nodes = list(nfg.soft_terminals)
    regular_nodes       = [
        n for n in G.nodes()
        if n != nfg.axiom
        and n not in nfg.terminals
        and n not in nfg.soft_terminals
    ]

    # Partition edges by type
    context_edges = [(u, v) for u, v, d in G.edges(data=True) if d.get('context')]
    conditional_edges = [(u, v) for u, v, d in G.edges(data=True)
                         if d.get('conditional') and not d.get('context')]
    regular_edges = [(u, v) for u, v, d in G.edges(data=True)
                         if not d.get('context') and not d.get('conditional')]

    # Draw nodes
    if axiom_nodes:
        nx.draw_networkx_nodes(G, pos, nodelist=axiom_nodes, node_color='lightgreen', node_size=900)
    if terminal_nodes:
        nx.draw_networkx_nodes(G, pos, nodelist=terminal_nodes, node_color='lightcoral', node_size=900)
    if soft_terminal_nodes:
        nx.draw_networkx_nodes(G, pos, nodelist=soft_terminal_nodes, node_color='lightyellow', node_size=900, edgecolors='goldenrod', linewidths=2)
    if regular_nodes:
        nx.draw_networkx_nodes(G, pos, nodelist=regular_nodes, node_color='lightblue', node_size=700)

    # Draw edges
    if regular_edges:
        nx.draw_networkx_edges(
            G, pos, edgelist=regular_edges,
            edge_color='#444444', arrows=True,
            arrowsize=18, arrowstyle='->',
            width=1.5, connectionstyle='arc3,rad=0.05'
        )
    if conditional_edges:
        nx.draw_networkx_edges(
            G, pos, edgelist=conditional_edges,
            edge_color='mediumpurple', arrows=True,
            arrowsize=18, arrowstyle='->',
            width=1.5, connectionstyle='arc3,rad=0.05'
        )
    if context_edges:
        nx.draw_networkx_edges(
            G, pos, edgelist=context_edges,
            edge_color='darkorange', style='dashed', arrows=True,
            arrowsize=18, arrowstyle='->',
            width=1.5, connectionstyle='arc3,rad=0.15'
        )

    nx.draw_networkx_labels(G, pos, font_size=9, font_weight='bold')

    # Build legend
    legend_elements = [
        Line2D([0], [0], marker='o', color='w', markerfacecolor='lightgreen',
               markersize=11, label='Axiom (start)'),
        Line2D([0], [0], marker='o', color='w', markerfacecolor='lightcoral',
               markersize=11, label='Terminal (end)'),
        Line2D([0], [0], marker='o', color='w', markerfacecolor='lightyellow',
               markeredgecolor='goldenrod', markeredgewidth=2,
               markersize=11, label='Soft terminal (optional end)'),
        Line2D([0], [0], marker='o', color='w', markerfacecolor='lightblue',
               markersize=11, label='State node'),
        Line2D([0], [0], color='#444444', linewidth=1.5, label='Transition')
    ]
    if conditional_edges:
        legend_elements.append(
            Line2D([0], [0], color='mediumpurple', linewidth=1.5,
                   label='Conditional transition')
        )
    if context_edges:
        legend_elements.append(
            Line2D([0], [0], color='darkorange', linewidth=1.5,
                   linestyle='dashed', label='Context relation')
        )

    plt.legend(handles=legend_elements, loc='upper right', fontsize=9)
    plt.title("Narrative Flow Graph", fontsize=16, fontweight='bold')
    plt.axis('off')
    plt.tight_layout()

    plt.savefig(output_path, dpi=300, bbox_inches='tight')
    print(f"Graph visualisation saved to: {output_path}")
    plt.close()


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
        G = build_graph(nfg)
        print_graph_stats(G, nfg)

        output_filename = filepath.replace('.json', '_graph.png')
        visualise_graph(G, nfg, output_filename)

    except Exception as e:
        print("\nERROR: Failed to build graph")
        print(f"Details: {e}")
        import traceback
        traceback.print_exc()
        sys.exit(1)