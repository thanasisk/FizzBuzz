#!/usr/bin/env python

for i in xrange(1,101):
	msg = ""
	if i % 3 == 0:
		msg += "Fizz"
	if i % 5 == 0:
		msg += "Buzz"
	print msg or i 

