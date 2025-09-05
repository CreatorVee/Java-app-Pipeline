# scripts/build_report.py
import json
import os
from datetime import datetime

report = {
    "commit": os.getenv("GITHUB_SHA", "local"),
    "branch": os.getenv("GITHUB_REF", "local"),
    "status": "Build successful",
    "artifact": "build/libs/java-app-1.0-SNAPSHOT.jar",
    "timestamp": datetime.utcnow().isoformat() + "Z"
}

with open("build_report.json", "w") as f:
    json.dump(report, f, indent=2)

print("✅ Build report generated: build_report.json")

