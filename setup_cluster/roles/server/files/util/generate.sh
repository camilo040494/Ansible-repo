#!/bin/bash
mkdir -p ~/data/
for i in `seq 1 40`;
do
	echo process$i
	cp process.txt ~/data/words$i.txt
done
