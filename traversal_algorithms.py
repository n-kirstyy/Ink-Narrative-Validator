###################################################################################################################
##
##   traversal_algorithms.py
##
##   Author: Nadia Kirsty Dodoo
##
##   Purpose: Implements traversals used in validation tasks
##
###################################################################################################################

from collections import deque
from NFG import NFG


#BFS
def nfg_bfs(nfg: NFG) -> set[str]:
    """BFS forward from the axiom over hyperedges.
        Args:
            nfg: NFG object.

        Returns:
            Set of vertex names reachable from the axiom.
    """
    visited = {nfg.axiom}
    queue = deque([nfg.axiom])

    while queue:
        current = queue.popleft()
        for dest in nfg.destinations_from(current):
            if dest not in visited and dest in nfg.vertices:
                visited.add(dest)
                queue.append(dest)

    return visited


def nfg_rev_bfs(nfg: NFG) -> set[str]:
    """BFS backwards from all valid ending nodes.

        Seeds the search from two categories of ending node:
        1.Hard terminals (nfg.terminals): knots with an explicit end/done token and no outgoing diverts. 
        2.Soft terminals: knots that contain an end/done token alongside outgoing diverts. 
        Is useful in dead end detection bc any node that can reach a soft terminal is not a dead end 
        since the author haas acknowledged the possibility of ending there

        Args:
            nfg: NFG object.

        Returns:
            Set of vertex names that can reach at least one valid ending.
    """
    # Build reverse adjacency from the hyperedge structure
    reverse: dict[str, list[str]] = {v: [] for v in nfg.vertices}
    for edge in nfg.hyperedges:
        if edge.destination in reverse:
            reverse[edge.destination].append(edge.source)

    all_endings = nfg.terminals | nfg.soft_terminals
    visited = set(all_endings)
    queue = deque(all_endings)

    while queue:
        current = queue.popleft()
        for neighbour in reverse.get(current, []):
            if neighbour not in visited:
                visited.add(neighbour)
                queue.append(neighbour)

    return visited


#DFS
def nfg_dfs(nfg: NFG) -> set[str]:
    """DFS forward from the axiom over hyperedges.
        Args:
            nfg: NFG object.

        Returns:
            Set of vertex names reachable from the axiom.
    """
    visited = {nfg.axiom}
    stack = [nfg.axiom]

    while stack:
        current = stack.pop()
        for dest in nfg.destinations_from(current):
            if dest not in visited and dest in nfg.vertices:
                visited.add(dest)
                stack.append(dest)

    return visited



def nfg_rev_dfs(nfg: NFG) -> set[str]:
    """DFS backwards from all valid ending nodes.
        Args:
            nfg: NFG object.

        Returns:
            Set of vertex names that can reach at least one valid ending.
    """
    # Build reverse adjacency from the hyperedge structure
    reverse: dict[str, list[str]] = {v: [] for v in nfg.vertices}
    for edge in nfg.hyperedges:
        if edge.destination in reverse:
            reverse[edge.destination].append(edge.source)

    all_endings = nfg.terminals | nfg.soft_terminals
    visited = set(all_endings)
    stack = list(all_endings)

    while stack:
        current = stack.pop()
        for neighbour in reverse.get(current, []):
            if neighbour not in visited:
                visited.add(neighbour)
                stack.append(neighbour)

    return visited
