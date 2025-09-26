import os
import subprocess

port = os.environ.get("PORT", "10000")

subprocess.run([
    "rasa",
    "run",
    "--enable-api",
    "--cors", "*",
    "--host", "0.0.0.0",
    "--port", port
])
