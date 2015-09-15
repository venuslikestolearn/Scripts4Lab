# bash runreplaceuniqnotation.sh folderLang
for i in `ls /media/GROOVES/Corpus/$1GT`
do
	echo $i
	python3 /media/GROOVES/Scripts/replaceuniqnotation.py /media/GROOVES/Corpus/$1GT/$i 
done
