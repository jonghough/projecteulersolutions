NB. Solution to Project Euler Question 30

NB. fifth powers of the digits (up to 8 digit numbers)
pwr =. (5&(^~))"0@:((10 10 10 10 10 10 10 10 10)&#:)
sumpwr =. *(= +/@:pwr)
NB. iterate through numbers
itsum =.  ~.@:(sumpwr"0 @: i.)
NB. sum
sum =. +/itsum
NB. -1 because we cannot count 1
sum - 1
