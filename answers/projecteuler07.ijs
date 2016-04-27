0 : 0
Answer to Project Euler problem 7
author: Jonathan Hough
since: Oct 7 2014
)

NB. check we have enough primes
_1 p: 200000
NB. ok, 17984 primes less than 200000

NB. Get a list of primes less than given number
primes =: ((I.@:(1&p:)) { ])

NB. select index 10000 (we want 10001st prime)
10000 { primes (i. 200000)
