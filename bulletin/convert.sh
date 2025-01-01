#!/bin/bash

for f in *.pdf
do
	g="${f%.*}.png"
	echo "$f" "$g"
	test -f "$g" || convert -colorspace rgb -strip "$f"[0] "$g"
done
