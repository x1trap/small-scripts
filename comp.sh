#!/bin/bash

size=7530

for file in *; do
	if [ -f "$file" ]; then
		file_size=$(stat -c %s "$file")

		if [ "$file_size" -ne "$size" ]; then
			echo "File '$file' has different size ($file_size)."
		fi
	fi
done

