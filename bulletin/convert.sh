#!/bin/bash

for f in *.pdf
do
	g="${f%.*}.png"
	test -f "$g" || {
		echo "$f" "$g"
		convert -colorspace rgb -strip "$f"[0] "$g"
	}
done
