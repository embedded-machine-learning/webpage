import time


date = str(int(time.time()))


input_file = open('./data/pages/research/opentheses.md' ,'r+')



all_lines = input_file.readlines()

outputlines = []

for line in all_lines:
	if("{% assign date =" in line):
		outputlines.append("{% assign date = "+date+" %}" )
	else:
		outputlines.append(line)


input_file.writelines(outputlines)

input_file.close()
