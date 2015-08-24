import sys
with open(sys.argv[1], 'r') as f1, open(sys.argv[2], 'w') as f2 :
	for line in f1:
		words= line.strip().split()
		try:			
			if words[0] == words[1]:
				continue
			elif words[1]== "null":
				f2.write(words[0]+'\n')
			else:
				continue
		except IndexError:
			pass
