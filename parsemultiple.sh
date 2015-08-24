# TO USE, PLEASE KEEP PARSESOUPORGINAL.SH WITH THIS:)
# COMMAND TO RUN IS bash parsemultiple.sh one 
# HERE one IS THE FOLDER NAME WHRE INPUT XML FILES ARE KEPT
mkdir "out$1"
#count=0
for i in `ls $1`
do
	python parsesouporginal.py "$1/$i" >> "out$1/$i"
#	count=$(($count+1))
done


