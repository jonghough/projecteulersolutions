NB. Project Euler
NB. problem 57

cnf =: (+%)/ NB. continued fraction
digits =: "."0 ":
numden =. 2&x: NB. list of numerator and denominator

NB. use #@:": instead of digits as digits takes too long.
NB. don't care about reconverting to numeric. Just count number of chars
NB. in the literal.
NB. This func takes a long time.
func =. #@:I.@:(>/"1)@:((#@:":)"0)@:numden@:(cnf\)
func 1,1000$2r1