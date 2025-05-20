import time
import subprocess
from datetime import datetime

def current_time():
    """Prints Current time"""
    now = datetime.now()
    # current_time = now.strftime("%H:%M:%S")
    current_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    print(f"Current Time is: {current_time} CST")

def run_command():
    """Runs the desired command."""
    command = "curl wttr.in/Nashville,TN"  # Replace with your actual command
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()

    if process.returncode == 0:
        print(f"Command executed successfully:\n{stdout.decode()}")
    else:
        print(f"Command failed with error:\n{stderr.decode()}")

if __name__ == "__main__":
    while True:
        current_time()
        run_command()
        time.sleep(300)  # Wait for 300 seconds (5 minutes)