import sys
with open(sys.argv[1],'r') as f1, open(sys.argv[2],'w') as f2:
	for line in f1:
		line=line.strip()
		if line.endswith("ല്") and not line.endswith("ല്ല്"):
			line=line[:-2]
			line=line+"ൽ"
			f2.write(line+'\n')
		if line.endswith("ണ്")and not line.endswith("ണ്ണ്"):
			line=line[:-2]
			line=line+"ൺ"
			f2.write(line+'\n')
		if line.endswith("ന്")and not line.endswith("ന്ന്"):
			line=line[:-2]
			line=line+"ൻ"
			f2.write(line+'\n')
		if line.endswith("റ്")  and not line.endswith("റ്റ്"):
			line=line[:-2]
			line=line+"ർ"
			f2.write(line+'\n')
		if line.endswith("ള്") and not line.endswith("ള്ള്"):
			line=line[:-2]
			line=line+"ൾ"
			f2.write(line+'\n')
		
