# bash /media/GROOVES/Scripts/runExtractRightWords.sh Bangla
mkdir $1RightWords
for i in `ls /media/GROOVES/Corpus/HindiCorpus/$1out`
do
	echo $i
	python3 /media/GROOVES/Scripts/extractRightWords.py /media/GROOVES/Corpus/HindiCorpus/$1out/$i $1RightWords/$i
done
