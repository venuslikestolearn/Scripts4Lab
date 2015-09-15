#!/bin/bash
# TO RUN RETA $1 IS LANG FOLDER
# bash runReta.sh BANGLA
mkdir /media/GROOVES/Corpus/$1out
for j in `ls /media/GROOVES/Corpus/$1OCR`
do
	java RecursiveAlignmentTool  /media/GROOVES/Corpus/$1OCR/$j /media/GROOVES/Corpus/$1GT/$j /media/GROOVES/Corpus/$1out/$j -opt config.txt
done
