#!/bin/bash

the_time="04:49"

for file in *; do
	if [ -f "$file" ]; then
		file_time=$(date -r "$file" "+%H:%M")

		if [ "$file_time" != "$the_time" ]; then
			echo "File '$file' has different modification ($file_time)."
		fi
	fi
done

