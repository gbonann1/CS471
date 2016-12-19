#! /usr/bin/env python
import sys

def powI(pow1, base):
	acc = 1
	p = 0
 	for p in range(0, pow1):
   		acc = acc * base
  	
  	return acc

def powF(pow1, base):
	if (pow1 == 0):
		return 1
	
	elif (pow1 == 1):
		return base
	
	else:
		return powF(pow1 - 1, base) * base
	

if len(sys.argv) != 3:
  	print("%s usage: [NUMBER]" % sys.argv[0])
  	exit()

arg1 = int(sys.argv[1])
arg2 = int(sys.argv[2])
print(powF(arg1, arg2))
	
  	
  
