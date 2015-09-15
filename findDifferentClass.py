import sys
with open(sys.argv[1] , 'r') as f, open(sys.argv[2],'w') as o:
	lines = f.readlines() # readlines creates a list of the lines
	count=0
	print(len(lines))
	while count<len(lines):
		#print(count)
		line1= lines[count]
		line2= lines[count+1]
		line3= lines[count+2]
		count=count+3
		if line2.strip()!=line3.strip():
			o.write(line1)
