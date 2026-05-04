###################################################################################################################
##
##   dead_end_validation.py
##
##   Author: Nadia Kirsty Dodoo
##
##   Purpose: Implements validation algorithms to detect dead ends
##
###################################################################################################################

import time
import tracemalloc
import psutil
from traversal_algorithms import nfg_bfs, nfg_rev_bfs, nfg_dfs, nfg_rev_dfs
from NFG import NFG


def check_dead_ends(nfg: NFG, algorithm: str="bfs")-> dict:
    """Detects vertices reachable form the axiom that cannot reach any terminals

        Args:
        nfg: NFG object
        algorithm: Traversal algorithm to use. BFS or DFS, defaults to bfs.
        
        Returns:
        Dictionary with detection results:
        
    """    
    psutil.cpu_percent(interval=None)
    tracemalloc.start()
    start_time = time.time()
    
    if algorithm.lower() == "bfs":
        reachable_from_axiom = nfg_bfs(nfg)
        can_reach_end = nfg_rev_bfs(nfg)
    
    elif algorithm.lower() == "dfs":
        reachable_from_axiom = nfg_dfs(nfg)
        can_reach_end = nfg_rev_dfs(nfg)
        
    else:
        raise ValueError(
            f"Unknown algorithm '{algorithm}'. "
            f"Choose from: bfs, dfs"
        )  
    dead_ends = reachable_from_axiom - can_reach_end
    
    runtime = time.time() - start_time
    memory_peak = tracemalloc.get_traced_memory()[1]
    tracemalloc.stop()
    cpu_usage = psutil.cpu_percent(interval=None)
    
    return {
        "Issue Type": "Dead End",
        "Detected": len(dead_ends) > 0,
        "Algorithm": algorithm,
        "Reachable from Start": len(reachable_from_axiom),
        "Can Reach End": len(can_reach_end),
        "Dead End Count": len(dead_ends),
        "Dead End Nodes": sorted(dead_ends),
        "Runtime": runtime,
        "Memory Peak(kb)": memory_peak / 1024,
        "Cpu Percent": cpu_usage
    }    
    