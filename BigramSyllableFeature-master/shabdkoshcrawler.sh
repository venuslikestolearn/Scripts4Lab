#$1- bn (Language code)
#Get the main page
wget http://www.shabdkosh.com/$1/browse -O index$1.html
#Add the following tag inside the <head></head>
# <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
sed -i 's/<head>/<head><meta http-equiv="Content-Type" content="text\/html; charset=utf-8" \/>/' index$1.html
#Select the characters
chars=`grep -oi '/browse/[^"a-z]' index$1.html`
for line in $chars
do
	urlToGet="http://www.shabdkosh.com/$1$line"
	echo $urlToGet
	charIndexFile=`wget --output-document - $urlToGet -q`
	pages=`echo $charIndexFile|grep -oi '/browse/[^"a-z]/[0-9]\+'`
	for page  in $pages
	do
		pageToGet="http://www.shabdkosh.com/$1$page"
		echo $pageToGet
		wordsFile=`wget --output-document - $pageToGet -q`
		words=`echo $wordsFile|grep -o 'English">[^\<]\+'|cut -f 2 -d ">"`
		for word in $words
		do
			echo $word>>out$1
		done
	done
done
rm index$1.html
