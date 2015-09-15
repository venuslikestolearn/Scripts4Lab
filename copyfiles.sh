#!/bin/bash
#mkdir $2
for i in `ls $1`
do
	for j in `ls $1/$i`
	do
		cp $1/$i/$j $2/$j
	done
done
