#!/usr/bin/python3
def puissance(a, b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")
	if not type(b) is int:
		raise TypeError("Only integers are allowed")
		
	if b < 0:
		return 1 / (a ** abs(b))
	else:
		c = 1
	for i in range(b):
		c *= a
	return c

