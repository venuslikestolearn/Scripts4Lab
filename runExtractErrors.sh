# bash /media/GROOVES/Scripts/runExtractErrors.sh Bangla
mkdir $1Errors
for i in `ls /media/GROOVES/Corpus/$1out`
do
	echo $i
	python3 /media/GROOVES/Scripts/extractErrors.py /media/GROOVES/Corpus/$1out/$i $1Errors/$i
done
