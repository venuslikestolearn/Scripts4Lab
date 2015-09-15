# python3 bigram.py b.txt lmmaluni.txt errorTrain.txt train0.txt 0

import sys, os
infile= sys.argv[1]
bigramfile= sys.argv[2]
trigramfile= sys.argv[3]
trainfile= sys.argv[4]
outputfile= sys.argv[5]
classValue=sys.argv[6]
unicodeList=[]
bigramDict={}
trigramDict={}
feature=[]
def createBiDictionary():
	with open(bigramfile, 'r') as bifile:
		for item in bifile:
			bisplits= item.split()
			bsec=''
			try:
				bsec=bisplits[2]
			except IndexError:
				pass
			temp=bisplits[1] + bsec
			bigramDict[temp]= bisplits[0]
def createTriDictionary():
	with open(trigramfile, 'r') as trifile:
		for item in trifile:
			trisplits= item.split()
			tsec=''
			try:
				sec2=trisplits[2]
				tsec=tsec+sec2
				try:
				    sec3=trisplits[3]
				    tsec=tsec+sec3
				except IndexError:
				    pass				
			except IndexError:
				pass
			temp=trisplits[1] + tsec
			trigramDict[temp]= trisplits[0]
def createfeature(unit,l):
	feature=[]
	feature.append('FEATURE:1 1')
	feature.append(str(2*l-3))
	for k in range(0,l-1):
		bigramProb='-30'
		bigram = unit[k]+ unit[k+1]
		if (unit[k] not in unicodeList) or (unit[k+1] not in unicodeList):
			bigramProb='-30'
		elif bigram in bigramDict:
			bigramProb = bigramDict[bigram]
		feature.append(bigramProb)
	#adding trigram
	for k in range(0,l-2):
		trigramProb='-40'
		trigram = unit[k]+ unit[k+1] +unit[k+2]
		if (unit[k] not in unicodeList) or (unit[k+1] not in unicodeList) or (unit[k+2] not in unicodeList):
			trigramProb='-40'
		elif trigram in trigramDict:
			trigramProb = trigramDict[trigram]
		feature.append(trigramProb)
	return feature
#PROGRAM BEGINNING

with open(infile,'r') as infi:   #taking unicode list as file 
	for word in infi:
		word= word.strip()
		#adding unicode to unicodeList
		unicodeList.append(word)   # adding in unicode list
#creating bigram dict for all unicodes
createBiDictionary()
createTriDictionary()
with open(trainfile, 'r') as train, open(outputfile,'w') as outfile:
	tagValue=1
	for line in train:
		line=line.strip()
		vector= []
		unit=[]
		unit=line.split()
		vector= createfeature(unit, len(unit))
		#print(len(vector))
		#outfile.write(' '.join(vector))
		outfile.write("===BEGIN===\n")
		outfile.write("TAG:")
		outfile.write('0' + classValue + str(tagValue)+"\n")
		tagValue=tagValue+1
		outfile.write("TRUTH:")
		outfile.write(classValue+"\n")
		outfile.write(' '.join(vector))
		outfile.write("\n")
		outfile.write("===END===\n")
