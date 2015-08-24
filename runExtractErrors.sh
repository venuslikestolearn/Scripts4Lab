mkdir TelErrors
for i in `ls /media/GROOVES/TeluguExperiments/RetaTel`
do
	echo $i
	python3 extractErrors.py /media/GROOVES/TeluguExperiments/RetaTel/$i TelErrors/$i
done
