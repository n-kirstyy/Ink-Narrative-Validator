###################################################################################################################
##
##   validator.py
##
##   Author: Nadia Kirsty Dodoo, with some formatting details by Claude AI
##
##   Purpose: Validates all Ink JSON files in a folder, logs results to CSV, and generates performance plots.
##            
###################################################################################################################

import os
import sys
import csv
import json
import random
import ctypes
import statistics
 
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import pandas as pd
 
from ink_parser import build_nfg
from graph_constructor import build_graph, visualise_graph
from unreachable_node_validation import check_unreachable
from dead_end_validation import check_dead_ends
from contradiction_validation import check_contradictions
 
 
 
### Paths
OUTPUT_DIR = "validation_output"
PLOTS_DIR = os.path.join(OUTPUT_DIR, "plots")
STORY_GRAPH_DIR = os.path.join(OUTPUT_DIR, "story_graphs")
REPORTS_DIR = os.path.join(OUTPUT_DIR, "reports")
CSV_PATH = os.path.join(OUTPUT_DIR, "results.csv")
 
CSV_FIELDNAMES = [
    "file",
    "node_count",
    "edge_count",
    "branching_factor",
    "issue_type",
    "algorithm",
    "detected",
    "issue_count",
    "runtime",
    "runtime_sd",
    "runtime_variance",
    "memory_peak_kb",
    "memory_peak_kb_sd",
    "memory_peak_kb_variance",
    "cpu_percent",
    "cpu_percent_sd",
    "cpu_percent_variance"
]
 
NUM_RUNS = 10  #number of times each validator is run per dataset
PLOT_BY_BRANCHING_FACTOR = False #For testing purposes. Value changed to True for when testing scalability against branching factor
 
 
def evict_cpu_cache(size_mb: int = 20):
    """Displaces CPU cache contents by allocating and touching a large buffer.
        Touches every cache line (64 bytes apart) to force eviction of previously
        cached NFG data. This reduces warm-cache bias between timed runs.
 
        Args:
            size_mb: Size of the eviction buffer in megabytes. Default 20MB exceeds
                     typical L3 cache sizes (6-16MB) to ensure full displacement.
    """
    size = size_mb * 1024 * 1024
    buf = (ctypes.c_byte * size)()
    for i in range(0, size, 64):
        buf[i] = 0
 
 
###Validation
def run_file(filepath: str, reports_dir: str) -> list[dict]:
    """Runs all validators on a single Ink JSON file NUM_RUNS times each.
        Writes a human-readable author report to reports_dir.
 
        Args:
            filepath: Path to the Ink JSON file.
            reports_dir: Directory to write the author report into.
 
        Returns:
            List of result row dicts, one per validator/algorithm combination.
    """
    filename = os.path.basename(filepath)
    nfg = build_nfg(filepath)
 
    node_count = len(nfg.vertices)
    edge_count = len(nfg.hyperedges)
    branching_factor = round(edge_count / node_count, 3) if node_count > 0 else 0
    rows = []
 
    u_bfs = None
    d_bfs = None
 
    # randomise order so neither gets a significant caching advantage
    algos = ["bfs", "dfs"]
    random.shuffle(algos)
 
    for algo in algos:
        #Unreachable node detection
        evict_cpu_cache()
        check_unreachable(nfg, algo)  #warmup run, discarded
 
        u_runs = []
        for _ in range(NUM_RUNS):
            evict_cpu_cache()
            u_runs.append(check_unreachable(nfg, algo))
        u = u_runs[0]  # detection results from first timed run; detected/counts don't need averaging
        u_runtimes = [r["Runtime"] for r in u_runs]
        u_memory = [r["Memory Peak(kb)"] for r in u_runs]
        u_cpu = [r["Cpu Percent"] for r in u_runs]
 
        rows.append({
            "file": filename,
            "node_count": node_count,
            "edge_count": edge_count,
            "branching_factor": branching_factor,
            "issue_type": u["Issue Type"],
            "algorithm": algo,
            "detected": u["Detected"],
            "issue_count": u["Unreachable Count"],
            "runtime": sum(u_runtimes)/NUM_RUNS,
            "runtime_sd": statistics.stdev(u_runtimes),
            "runtime_variance": statistics.variance(u_runtimes),
            "memory_peak_kb": sum(u_memory)/NUM_RUNS,
            "memory_peak_kb_sd": statistics.stdev(u_memory),
            "memory_peak_kb_variance": statistics.variance(u_memory),
            "cpu_percent": sum(u_cpu)/NUM_RUNS,
            "cpu_percent_sd": statistics.stdev(u_cpu),
            "cpu_percent_variance": statistics.variance(u_cpu)
        })
 
        #Dead end detection
        evict_cpu_cache()
        check_dead_ends(nfg, algo)  #warmup run, discarded
 
        d_runs = []
        for _ in range(NUM_RUNS):
            evict_cpu_cache()
            d_runs.append(check_dead_ends(nfg, algo))
        d = d_runs[0]  # detection results from first timed run
        d_runtimes = [r["Runtime"] for r in d_runs]
        d_memory = [r["Memory Peak(kb)"] for r in d_runs]
        d_cpu = [r["Cpu Percent"] for r in d_runs]
 
        rows.append({
            "file": filename,
            "node_count": node_count,
            "edge_count": edge_count,
            "branching_factor": branching_factor,
            "issue_type": d["Issue Type"],
            "algorithm": algo,
            "detected": d["Detected"],
            "issue_count": d["Dead End Count"],
            "runtime": sum(d_runtimes)/NUM_RUNS,
            "runtime_sd": statistics.stdev(d_runtimes),
            "runtime_variance": statistics.variance(d_runtimes),
            "memory_peak_kb": sum(d_memory)/NUM_RUNS,
            "memory_peak_kb_sd": statistics.stdev(d_memory),
            "memory_peak_kb_variance": statistics.variance(d_memory),
            "cpu_percent": sum(d_cpu)/NUM_RUNS,
            "cpu_percent_sd": statistics.stdev(d_cpu),
            "cpu_percent_variance": statistics.variance(d_cpu)
        })
 
        # Save BFS results for the author report
        if algo == "bfs":
            u_bfs = u
            d_bfs = d
 
    #Contradiction detection(no algorithm variant)
    evict_cpu_cache()
    check_contradictions(nfg)  # warmup run, discarded
 
    c_runs = []
    for _ in range(NUM_RUNS):
        evict_cpu_cache()
        c_runs.append(check_contradictions(nfg))
    c = c_runs[0]  # detection results from first timed run
    c_runtimes = [r["Runtime"] for r in c_runs]
    c_memory = [r["Memory Peak(kb)"] for r in c_runs]
    c_cpu = [r["Cpu Percent"] for r in c_runs]
    rows.append({
        "file": filename,
        "node_count": node_count,
        "edge_count": edge_count,
        "branching_factor": branching_factor,
        "issue_type": c["Issue Type"],
        "algorithm": "none",
        "detected": c["Detected"],
        "issue_count": c["Unsatisfiable Edge Count"] + c["Dead Branch Count"] + c["State Dead End Count"] + len(c["Conditionally Unreachable"]),
        "runtime": sum(c_runtimes)/NUM_RUNS,
        "runtime_sd": statistics.stdev(c_runtimes),
        "runtime_variance": statistics.variance(c_runtimes),
        "memory_peak_kb": sum(c_memory)/NUM_RUNS,
        "memory_peak_kb_sd": statistics.stdev(c_memory),
        "memory_peak_kb_variance": statistics.variance(c_memory),
        "cpu_percent": sum(c_cpu)/NUM_RUNS,
        "cpu_percent_sd": statistics.stdev(c_cpu),
        "cpu_percent_variance": statistics.variance(c_cpu)
    })
 
    generate_report(filename, u_bfs, d_bfs, c, reports_dir)
 
    return rows
 
 
def run_folder(folder: str, reports_dir: str) -> list[dict]:
    """Runs validation on all JSON files in a folder.
 
        Args:
            folder: Path to folder containing Ink JSON files.
            reports_dir: Directory to write author reports into.
 
        Returns:
            List of all result rows across all files.
    """
    json_files = sorted([os.path.join(folder, f) for f in os.listdir(folder) if f.endswith(".json")])
 
    if not json_files:
        print(f"No JSON files found in '{folder}'")
        sys.exit(1)
 
    all_rows = []
    for filepath in json_files:
        print(f"  Validating: {os.path.basename(filepath)}")
        try:
            rows = run_file(filepath, reports_dir)
            all_rows.extend(rows)
        except Exception as e:
            print(f"  ERROR processing {os.path.basename(filepath)}: {e}")
 
    return all_rows
 
 
 
### CSV
def write_csv(rows: list[dict], path: str):
    """Writes result rows to a CSV file.
 
        Args:
            rows: List of result row dicts.
            path: Output CSV file path.
    """
    with open(path, "w", newline="", encoding="utf-8") as f:
        writer = csv.DictWriter(f, fieldnames=CSV_FIELDNAMES)
        writer.writeheader()
        writer.writerows(rows)
 
    print(f"\nResults saved to: {path}")
 
 
 
### Author report
def generate_report(filename: str, u: dict, d: dict, c: dict, reports_dir: str):
    """Writes a human-readable validation report for a single story.
 
    Args:
        filename: Story filename (used as report title).
        u: Result dict from check_unreachable (BFS).
        d: Result dict from check_dead_ends (BFS).
        c: Result dict from check_contradictions.
        reports_dir: Directory to write the .txt file into.
    """
    structural_dead_ends = d["Dead End Nodes"]
    state_dead_ends = c["State Dead Ends"]
    total_dead_ends = len(structural_dead_ends) + len(state_dead_ends)
 
    structural_unreachable = u["Unreachable Nodes"]
    state_unreachable = c["Conditionally Unreachable"]
    total_unreachable = len(structural_unreachable) + len(state_unreachable)
 
    unsatisfiable_edges = c["Unsatisfiable Edges"]
    dead_branches = c["Dead Branches"]
    total_contradictions = len(unsatisfiable_edges) + len(dead_branches)
 
    lines = []
    lines.append(f"Validation Report: {filename}")
    lines.append("=" * 60)
    lines.append("")
 
    #Dead Ends
    de_heading = f"Dead Ends — {total_dead_ends}"
    if state_dead_ends:
        de_heading += f" (includes {len(state_dead_ends)} state-caused*)"
    lines.append(de_heading)
    lines.append("-" * 40)
    if total_dead_ends == 0:
        lines.append("  No dead ends detected.")
    else:
        for node in structural_dead_ends:
            lines.append(f"  {node}")
        for node in state_dead_ends:
            lines.append(f"  {node}  *")
    lines.append("")
 
    #Unreachable Nodes
    ur_heading = f"Unreachable Nodes — {total_unreachable}"
    if state_unreachable:
        ur_heading += f" (includes {len(state_unreachable)} state-caused*)"
    lines.append(ur_heading)
    lines.append("-" * 40)
    if total_unreachable == 0:
        lines.append("  No unreachable nodes detected.")
    else:
        for node in structural_unreachable:
            lines.append(f"  {node}")
        for node in state_unreachable:
            lines.append(f"  {node}  *")
    lines.append("")
 
    #Contradictions
    lines.append(f"Contradictions — {total_contradictions}")
    lines.append("-" * 40)
    if total_contradictions == 0:
        lines.append("  No contradictions detected.")
    else:
        if unsatisfiable_edges:
            lines.append("  Unsatisfiable edges (variable required both true and false):")
            for e in unsatisfiable_edges:
                lines.append(f"    {e['source']} -> {e['dest']}  [variable: {e['variable']}]")
        if dead_branches:
            lines.append("  Dead branches (variable state conflict on path):")
            for b in dead_branches:
                required_str = "true" if b["required"] else "false"
                actual_str = "true" if b["actual"] else "false"
                lines.append(
                    f"    {b['node']} -> {b['dest']}  "
                    f"[variable: {b['variable']} requires {required_str}, was set to {actual_str}]"
                )
    lines.append("")
 
    if state_dead_ends or state_unreachable:
        lines.append("* State-caused: structurally reachable/connected but blocked by variable state.")
        lines.append("")
 
    stem = os.path.splitext(filename)[0]
    out_path = os.path.join(reports_dir, f"{stem}_report.txt")
    with open(out_path, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
 
    print(f"  Report saved: {out_path}")
 
 
### Performance plots
METRICS = [("runtime", "Runtime (s)"), ("memory_peak_kb", "Memory Peak (KB)"), ("cpu_percent", "CPU Usage (%)")]
 
ISSUE_TYPES = [("Unreachable Content", "Unreachable Node Detection"), ("Dead End", "Dead End Detection"), ("State Contradiction", "Contradiction Detection")]
 
 
def plot_task(df: pd.DataFrame, issue_type: str, title: str, plots_dir: str):
    """Generates runtime, memory, and CPU plots for a single validation task.
        For unreachable and dead end tasks, plots two curves — BFS (blue)
        and DFS (red). For contradiction detection, plots a single curve.
 
        Args:
            df: Results dataframe
            issue_type: Issue type string to filter on.
            title: Plot title
            plots_dir: Directory to save PNG files.
    """
    task_df = df[df["issue_type"] == issue_type].copy()
    
    if PLOT_BY_BRANCHING_FACTOR:
        x_col = "branching_factor"          
        x_label = "Branching Factor"
        
    else:
        x_col = "node_count"               
        x_label = "Node Count"
        
    task_df = task_df.sort_values(x_col)
 
    slug = issue_type.lower().replace(" ", "_")
 
    for col, ylabel in METRICS:
        fig, ax = plt.subplots(figsize=(8, 5))
 
        if issue_type == "State Contradiction":
            means = task_df.groupby(x_col)[col].mean()
            ax.plot(means.index, means.values, color="steelblue", marker="o", linewidth=2, label="Contradiction")
            
        else:
            for algo, color, label in (("bfs", "steelblue", "BFS"), ("dfs", "crimson",   "DFS")):
                algo_df = task_df[task_df["algorithm"] == algo]
                means = algo_df.groupby(x_col)[col].mean()
                ax.plot(means.index, means.values, color=color, marker="o", linewidth=2, label=label)
            ax.legend()
 
        ax.set_xlabel(x_label)
        ax.set_ylabel(ylabel)
        ax.set_title(f"{title} — {ylabel}")
        ax.grid(True, linestyle="--", alpha=0.5)
        plt.tight_layout()
 
        out_path = os.path.join(plots_dir, f"{slug}_{col}.png")
        fig.savefig(out_path, dpi=150)
        plt.close(fig)
        print(f"  Saved: {out_path}")
 
 
def plot_totals(df: pd.DataFrame, plots_dir: str):
    """Generates total validation cost plots aggregated across all tasks.
 
        Sums each metric across all validators per file and plots against
        node count, giving an overall picture of full validation cost.
 
        Args:
            df: Full results dataframe.
            plots_dir: Directory to save PNG files.
    """
    
    if PLOT_BY_BRANCHING_FACTOR:
        x_col = "branching_factor"          
        x_label = "Branching Factor"
        
    else:
        x_col = "node_count"               
        x_label = "Node Count"
        
    totals = df.groupby(["file", x_col])[
        ["runtime", "memory_peak_kb", "cpu_percent"]
    ].sum().reset_index()
        
    totals = totals.sort_values(x_col)
        
    for col, ylabel in METRICS:
        means = totals.groupby(x_col)[col].mean()
        fig, ax = plt.subplots(figsize=(8, 5))
        ax.plot(means.index, means.values, color="darkorchid", marker="o", linewidth=2, label="Total")
        ax.set_xlabel(x_label)
        ax.set_ylabel(ylabel)
        ax.set_title(f"Total Validation Cost — {ylabel}")
        ax.grid(True, linestyle="--", alpha=0.5)
        plt.tight_layout()
 
        out_path = os.path.join(plots_dir, f"total_{col}.png")
        fig.savefig(out_path, dpi=150)
        plt.close(fig)
        print(f"  Saved: {out_path}")
 
 
def generate_plots(csv_path: str, plots_dir: str):
    """Reads the results CSV and generates all 12 performance plots.
 
        Args:
            csv_path: Path to the results CSV file.
            plots_dir: Directory to save PNG files.
    """
    df = pd.read_csv(csv_path)
 
    print("\nGenerating performance plots...")
    for issue_type, title in ISSUE_TYPES:
        plot_task(df, issue_type, title, plots_dir)
 
    plot_totals(df, plots_dir)
 
 
###Story graph visualisation
def generate_story_graphs(folder: str, story_graph_dir: str):
    """Generates and saves a narrative structure graph for each JSON file.
        Args:
            folder: Folder containing Ink JSON files.
            story_graph_dir: Directory to save story graph PNGs.
    """
    json_files = sorted([
        os.path.join(folder, f)
        for f in os.listdir(folder)
        if f.endswith(".json")
    ])
 
    print("\nGenerating story graphs...")
    for filepath in json_files:
        filename = os.path.basename(filepath)
        try:
            nfg = build_nfg(filepath)
            G = build_graph(nfg)
            stem = os.path.splitext(filename)[0]
            out_path = os.path.join(story_graph_dir, f"{stem}_graph.png")
            visualise_graph(G, nfg, out_path)
        except Exception as e:
            print(f"  ERROR generating graph for {filename}: {e}")
 
 
if __name__ == "__main__":
    if len(sys.argv) >= 2:
        folder = sys.argv[1]
    else:
        folder = input("Enter path to folder of Ink JSON files: ").strip().strip('"').strip("'")
 
    if not os.path.isdir(folder):
        print(f"ERROR: '{folder}' is not a valid directory")
        sys.exit(1)
 
    # Set up output directories
    os.makedirs(OUTPUT_DIR, exist_ok=True)
    os.makedirs(PLOTS_DIR, exist_ok=True)
    os.makedirs(STORY_GRAPH_DIR, exist_ok=True)
    os.makedirs(REPORTS_DIR, exist_ok=True)
 
    # Run validation
    print(f"\nRunning validation on: {folder}")
    all_rows = run_folder(folder, REPORTS_DIR)
 
    # Write CSV
    write_csv(all_rows, CSV_PATH)
 
    # Generate performance plots
    generate_plots(CSV_PATH, PLOTS_DIR)
 
    #Create story graphs visualisation
    generate_story_graphs(folder, STORY_GRAPH_DIR)