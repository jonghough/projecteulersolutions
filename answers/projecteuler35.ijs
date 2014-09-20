NB. Project Euler
NB. problem 35

NB. extract digits of integer
digits =: "."0 ":

NB.Get the rotations
rotations =: ((i.@:#) |."(0 1) ])@: digits

NB. digits to numeric
numerify =. ,/@:":"0

NB. returns true if y is circular prime
is_circle =: (0&=)@:(0&e.)@:(1&p:)@:".@:numerify@:rotations

NB. less than 1000000
+/ is_circle"0 >: i. 1000000