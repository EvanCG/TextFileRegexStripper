import re

inputFilePath = raw_input('Input text file > ')
outputFilePath = raw_input('Output text file > ')

# Open the new file in prep for output
outputFile = open(outputFilePath, 'w')

pattern = re.compile(r'http://www(1)?.[a-z]*.[^>]*')

with open(inputFilePath, "rb") as f:
	for line in f:
		mo = pattern.search(line) 
		if mo:
			outputFile.write(mo.group(0).strip() + "\n")
			
outputFile.close()