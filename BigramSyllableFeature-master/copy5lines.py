#1 - number of lines in file with more lines
#2 - zero class input file
#3 - one class input file
import sys, linecache
zeroLines=""
oneLines=""
for i in range(1,int(sys.argv[1])+1):
	zeroLines+=linecache.getline(sys.argv[2],i)
	oneLines+=linecache.getline(sys.argv[3],i)
	if i%5==0 and i!=0:
		print(zeroLines,end="")
		print(oneLines,end="")
		zeroLines=""
		oneLines=""
