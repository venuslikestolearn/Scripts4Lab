#!/bin/bash
for i in `ls $1`
do
	for j in `ls $1/$i`
	do
		cp $1/$i/$j TelOCRfiles/$i-$j
	done
done
