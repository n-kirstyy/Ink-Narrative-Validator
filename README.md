# Ink-Narrative-Validator

The Ink Narrative Validator is an analysis tool that parses compiled
Ink JSON files (exported from Inky or the Ink compiler), builds a Narrative
Flow Graph (NFG) representation, and runs three classes of validation:

  1. Unreachable Node Detection  — knots no player path can ever visit
  2. Dead End Detection — knots from which no terminal can be reached
  3. State Contradiction Detection — variable-state conflicts that block paths


## Requirements
  Python 3.10 or higher

  Install Python dependencies:
    pip install psutil matplotlib pandas


## Installation/Setup
1. Clone the repository:
     git clone https://github.com/[n.kirstyy]/ink-narrative-validator.git
     cd ink-narrative-validator

2. Install dependencies:
     pip install psutil matplotlib pandas


## How to Run
The main entry point is validator.py. Pass it a folder containing one or
more compiled Ink JSON files:
 python validator.py /path/to/your/ink/json/folder

You will be prompted for a path if none is supplied.


## Output
All output is written to a folder called validation_output/ created in the
working directory:
  validation_output/
    results.csv  — Full numerical results for all validators/files
    reports/ — Human-readable .txt report per story
    plots/ — Performance plots (runtime, memory, CPU) as PNGs
    story_graphs/ — Narrative structure graph images per story
    
## DATA files
This repository also includes files that were used for testing and their results

## References
Verbrugge, C. (2003). A structure for modern computer narratives.
