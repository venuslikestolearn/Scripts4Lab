# TO USE, PLEASE KEEP BSforxmlGT.SH WITH THIS:)
# COMMAND TO RUN IS bash BSforxmlGT.sh 'folder containing xml folders' 
# HERE one IS THE FOLDER NAME WHRE INPUT XML FILES ARE KEPT

for i in `ls $1`
do
	python3 BSforxmlGT.py "$1/$i"
done
:'
if [ ! -d "$align" ]; then
mkdir align
fi
fi
for i in `ls /home/venus/Documents/RecursiveTextAlignmentTool_release_v1_1/texts/output`
do
	java RecursiveAlignmentTool texts/output/$i tetxs/0002/$i "texts/align/$i.txt" -opt config.txt

done
if [ ! -d "separatedGT" ]; then
mkdir separatedGT 
fi
if [ ! -d "separatedOCR" ]; then
mkdir separatedOCR 
fi
'
:'
for i in `ls texts/align`
do
	awk 'NR % 3==1' texts/align/$i >>"separatedOCR/$i"
	awk 'NR % 3==2' texts/align/$i >>"separatedGT/$i"
	sed -i 's/^....//' "separatedOCR/$i" #removing OCR:
	sed -i 's/^....//' "separatedGT/$i" #removing GT :
done
'
