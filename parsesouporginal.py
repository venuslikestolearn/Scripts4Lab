# TO USE, PLEASE KEEP PARSESMULTIPLE.SH WITH THIS:)
import sys
from bs4 import BeautifulSoup as BS
import codecs
sys.stdout=codecs.getwriter("UTF-8")(sys.stdout)
soup= BS(open(sys.argv[1]))
#soup= BS("<xml>data<xml>")
print(soup.get_text())
