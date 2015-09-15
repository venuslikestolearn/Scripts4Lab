import sys
for i in sys.argv[1]:
	print(repr(i)+ ' -- '  + str(hex(ord(i)))+' --',end='')
	# chr(ord(i)) gives the original character
print()
