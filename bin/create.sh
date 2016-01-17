#!/bin/bash
# create a shell script

if [ $# -ne 1 ]; then
	echo "Usage: $(basename $0) <file>"
	exit 1
fi

file="$1"

if [[ ! -f $file ]]; then
	if [[ $file =~ .*\.py ]]; then
		echo "#!/usr/bin/python" > "$file"
	elif [[ $file =~ .*\.sh ]]; then
		echo "#!/bin/bash" > "$file"
	fi
else
	echo "File already exists"
	exit -1
fi

chmod +x "$file"
vim $file
