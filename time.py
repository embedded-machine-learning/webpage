import time


date = str(int(time.time()))


input_file = open('./data/pages/research/opentheses.md' ,'r+')

all_lines = input_file.readlines()
all_lines[10] = "{% assign date = "+date+" %}"
input_file.writelines(all_lines)
input_file.close()

