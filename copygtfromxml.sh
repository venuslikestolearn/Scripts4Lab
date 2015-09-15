#!/bin/bash
# to copy xml files only from phani's corpus
mkdir /media/GROOVES/Corpus/$1Corpus
for i in `ls /media/GROOVES/AA/Phani_PhaseI_BookCorpus/$1/600_Original/`
do
	mkdir /media/GROOVES/Corpus/$1Corpus/$i
	cp /media/GROOVES/AA/Phani_PhaseI_BookCorpus/$1/600_Original/$i/text.xml /media/GROOVES/Corpus/$1Corpus/$i/text.xml
done
