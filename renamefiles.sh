for i in `ls $1`
do
    newname=`echo $i|sed 's/^[0-9]\+-//'`
    newname=`echo $newname|sed 's/_300_/_600_/'`
    mv $1/$i $1/$newname
done
