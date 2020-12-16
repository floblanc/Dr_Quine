import os
import ntpath

i = 5
if i <= 0:
	exit()
if ntpath.basename(__file__) == "Sully.py":
	i += 1
string = 'import os\nimport ntpath\n\ni = %d\nif i <= 0:\n\texit()\nif ntpath.basename(__file__) == "Sully.py":\n\ti += 1\nstring = %r\nf = open(f"Sully_{i - 1}.py", "w")\nf.write(string %% (i - 1, string))\nf.close()\ncmd = f"python Sully_{i - 1}.py"\nos.system(cmd)\n'
f = open(f"Sully_{i - 1}.py", "w")
f.write(string % (i - 1, string))
f.close()
cmd = f"python Sully_{i - 1}.py"
os.system(cmd)
