import sys
with open(sys.argv[1],'r') as file1, open(sys.argv[2],'w') as file2:
	for line in file1:
		file2.write('<s>' +'\t' + line.strip()+ '\t' +'</s>' +'\n')
	
