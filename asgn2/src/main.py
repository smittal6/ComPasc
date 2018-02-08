from SymTable import SymTable
from ThreeAddrCode import ThreeAddrCode
from codegen import CodeGenerator
from varAllocateRegister import varAllocateRegister
import collections
import sys

def reader (tacf): # 3-addr code file
	f = open (tacf).readlines()
	content = [x.strip() for x in f]
	content = [x.split(',') for x in content]
	for i in range (len(content)):
		content[i] = [x.strip() for x in content[i]]
		while (len(content[i]) != 5):
			content[i].append('')
	return content

def divideToFunctions (ac3code):
	FB = {}
	flag = 0
	for i in range(len(ac3code)):
		codeline = ac3code[i]
		# print (codeline)
		if (codeline[1] == 'LABEL' and codeline[2] == 'FUNC'):
			if (flag == 0):
				FB['main'] = [1,i]
				flag = 1
			for j in range (i,len(ac3code)):
				if (ac3code[j][1] == 'RETURN'):
					break
			FB[codeline[3].name] = [i+1,j+1]
			i = j + 1
	if (flag == 0):
		FB['main'] = [1,i]
	return FB

def main():
	file = sys.argv[1]
	content = reader(file)

    # Construct the Symbol Table ?
	SymTab = SymTable()
	ac3 = ThreeAddrCode(SymTab)
	ac3.addTo3AC(content)

	FB = divideToFunctions(ac3.code)
	print (FB)

	regAlloc = varAllocateRegister(SymTab,ac3)

	# Codegen object
    	codeGen = CodeGenerator(SymTab, ac3, regAlloc)
    	codeGen.setup_all()
    	codeGen.display_code()

if __name__ == '__main__':
	main()
