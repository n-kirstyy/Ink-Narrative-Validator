###################################################################################################################
##
##   dead_end_validation.py
##
##   Author: Nadia Kirsty Dodoo
##
##   Purpose: Implements validation algorithms to detect unreachable nodes
##
###################################################################################################################

import time
import tracemalloc
import psutil
from traversal_algorithms import nfg_bfs, nfg_dfs
from NFG import NFG


def check_unreachable(nfg: NFG, algorithm: str="bfs")-> dict:
    """Detects vertices with no path from the axiom 
        Args:
            nfg: NFG object
            algorithm: Traversal algorithm to use. BFS or DFS, defaults to bfs.
        
        Returns:
            Dictionary with detection results
    """
    psutil.cpu_percent(interval=None)
    tracemalloc.start()
    start_time = time.time()
    
    if algorithm.lower() == "bfs":
        reachable = nfg_bfs(nfg)
    
    elif algorithm.lower() == "dfs":
        reachable = nfg_dfs(nfg)
        
    else:
        raise ValueError(
            f"Unknown algorithm '{algorithm}'. "
            f"Choose from: bfs, dfs"
        )
    
    unreachable = nfg.vertices - reachable
    
    runtime = time.time() - start_time
    memory_peak = tracemalloc.get_traced_memory()[1]
    tracemalloc.stop()
    cpu_usage = psutil.cpu_percent(interval=None)
    
    return {
        "Issue Type": "Unreachable Content",
        "Detected": len(unreachable) > 0,
        "Algorithm": algorithm,
        "Reachable Count": len(reachable),
        "Unreachable Count": len(unreachable),
        "Unreachable Nodes": sorted(unreachable),
        "Runtime": runtime,
        "Memory Peak(kb)": memory_peak / 1024,
        "Cpu Percent": cpu_usage  
    }    
    
