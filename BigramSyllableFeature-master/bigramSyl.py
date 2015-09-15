# python3 bigram.py b.txt lmmaluni.txt errorTrain.txt train0.txt 0

import sys, os
infile= sys.argv[1]
bigramfile= sys.argv[2]
trainfile= sys.argv[3]
outputfile= sys.argv[4]
classValue=sys.argv[5]
unicodeList=[]
bigramDict={}
feature=[]
def createDictionary():
	with open(bigramfile, 'r') as bifile:
		for item in bifile:
			splits= item.split()
			sec=''
			try:
				sec=splits[2]
			except IndexError:
				pass
			temp=splits[1] + sec
			bigramDict[temp]= splits[0]
def createfeature(unit,l):
	feature=[]
	feature.append('FEATURE:1 1')
	#if len ==1:
	#	print("One case!! :)")
	#	feature.append('2')
	#	feature.append(bigramDict['<s>'+line])
	#	feature.append(bigramDict[line+'</s>'])
	#else:
	feature.append(str(l-1))
	for k in range(0,l-1):
		bigramProb='0'
		bigram = unit[k]+ unit[k+1]
		if (unit[k] not in unicodeList) or (unit[k+1] not in unicodeList):
			bigramProb='0'
		elif bigram in bigramDict:
			bigramProb = bigramDict[bigram]
		feature.append(bigramProb)
	return feature
#PROGRAM BEGINNING

with open(infile,'r') as infi:   #taking unicode list as file 
	for word in infi:
		word= word.strip()
		#adding unicode to unicodeList
		unicodeList.append(word)   # adding in unicode list
#creating bigram dict for all unicodes
createDictionary()
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
