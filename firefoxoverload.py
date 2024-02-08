#!/usr/bin/env python3

import subprocess

print("""first overloading host with a RAM spike - then
flooding the host with firefox instance at once
""")

#nohup firefoxoverload; nohup eatmemory 20G 
#echo "executing 20G RAM spike now"


# Define the commands for your bash scripts
script1_command = "firefoxoverload.sh"
script2_command = "eatmemory"

# Run the scripts concurrently using subprocess.Popen
process1 = subprocess.Popen(script1_command, shell=True)
print ("executing 20G RAM spike now")
process2 = subprocess.Popen(script2_command, shell=True)

# Wait for both processes to finish
process1.wait()
process2.wait()

print("Both scripts have finished.")
