#! /usr/bin/env python
import sys

def ack(m, n):
    if (m == 0):
        return n + 1
    elif (n == 0 and m > 0):
	return ack(m-1, 1)
    elif (n > 0 and m > 0):
	return ack(m-1, ack(m,n-1))
    return -1



if len(sys.argv) != 3:
    print("%s usage: [NUMBER]" % sys.argv[0])
    exit()

arg1 = int(sys.argv[1])
arg2 = int(sys.argv[2])
print(ack(arg1, arg2))
