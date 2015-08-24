#!/bin/bash
# to copy xml files only from phani's corpus
for i in `ls /media/GROOVES/AA/Phani_PhaseI_BookCorpus/Telugu/600_Original/`
do
	mkdir /media/GROOVES/TeluguExperiments/TeluguGt/$i
	cp /media/GROOVES/AA/Phani_PhaseI_BookCorpus/Telugu/600_Original/$i/text.xml /media/GROOVES/TeluguExperiments/TeluguGT/$i/text.xml
done
