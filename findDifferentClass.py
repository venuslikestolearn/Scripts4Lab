#1 - number of lines in file
#2 - input file
line2=''
line3=''
with open(sys.argv[1],'r') as f:
	for line in f:
		while True:
			try:
				line1 = f.readline()
				line2 = f.readline()
				line3 = f.readline()
			except IOError:
				pass				
			if line2 != line3:
				print(line1)
