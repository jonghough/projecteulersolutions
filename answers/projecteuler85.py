''' Solution to Project EUler Q 85
    Oct 7 2014
'''



def pe85(larg, rarg):
	'''get the number of inner recatngles for a larg * rarg rectanlge'''
	count = 0
	llist = range(1, larg+1)
	rlist = range(1, rarg+1)

	for l in llist:
		for r in rlist:
			count += l*r

	return count


if __name__ == "__main__":

	# test for 2x3 grid, as in question.
	k = pe85(2,3)
	print str(k)
	
	l1 = range(1,200)
	l2 = range(1,200)
	bestfit = 10000
	area = 0
	for i in l1:
		for j in l2:
			 diff = abs(2000000 - pe85(i,j))
			 if diff < bestfit:
				area = i*j
				bestfit = diff

	print "AREA is "+str(area)
