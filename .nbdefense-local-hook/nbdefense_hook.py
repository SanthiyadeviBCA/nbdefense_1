#!/usr/bin/env python
import subprocess
import sys

def main():
    files = [f for f in sys.argv[1:] if f.endswith(".ipynb")]
    for file in files:
        print(f"Scanning {file} with NBDefense...")
        result = subprocess.run(["nbdefense", "scan", file])
        if result.returncode != 0:
            print(f"NBDefense found issues in {file}")
            return result.returncode
    return 0

if __name__ == "__main__":
    exit(main())
