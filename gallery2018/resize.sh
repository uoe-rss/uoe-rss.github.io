#!/bin/bash

for f in `ls *.jpg`; do
    echo "Resize $f"
    convert $f -resize 1152x864 $f
done;

