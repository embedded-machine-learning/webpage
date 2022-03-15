import time


date = str(int(time.time()))


input_file = open('./data/pages/research/opentheses.md' ,'r')
all_lines = input_file.readlines()
input_file.close()

outputfile = open('./data/pages/research/opentheses.md' ,'w')
all_lines[10] = "{% assign date = "+date+" %}\n"
outputfile.writelines(all_lines)
outputfile.close()


input_file = open('./data/pages/research/opentheses_old.md' ,'r')
all_lines = input_file.readlines()
input_file.close()


outputfile = open('./data/pages/research/opentheses_old.md' ,'w')
all_lines[10] = "{% assign date = "+date+" %}\n"
outputfile.writelines(all_lines)
outputfile.close()
