import sys
filedata = None
with open(sys.argv[1], 'r') as file:
  filedata = file.read()
filedata = filedata.replace(chr(0x9c7)+chr(0x9be), chr(0x9cb))
filedata = filedata.replace(chr(0x9c7)+chr(0x9d7),chr(0x9cc))
with open(sys.argv[1], 'w') as file:
  file.write(filedata)		
