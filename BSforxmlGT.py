# command is :-----------python3 parsesouporginal.py one/text.xml
import sys,os
from bs4 import BeautifulSoup as BS
import codecs
sys.stdout=codecs.getwriter("UTF-8")(sys.stdout)
soup= BS(open(sys.argv[1]+'/text.xml'))
pageNames= soup.findAll(attrs={"name" : "ImageLoc"})
pageText= soup.findAll(attrs={"name" : "Text"})
if not os.path.exists(sys.argv[2]):
    os.makedirs(sys.argv[2])
for x,y in zip(pageNames,pageText):
	name= ''.join(x.contents).split('/',1)[1]
	nam= name.replace('tif', 'txt')
	text= ''.join(y.contents)
	with open(sys.argv[2]+'/'+ nam, 'a') as f:
		f.write(text)

	
