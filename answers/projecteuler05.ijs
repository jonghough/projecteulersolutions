NB. solution to project euler question5

factors =:  q:&.> <"0>:>: i.19 NB. 1.. 20
primes =: p: i.8 NB. primes less than 20
x: */ (>primes) ^ (>./"1 > primes    ((+/@:=)&.>"0 _)factors)
