NB. Answer to Project Euler Q 40.

NB. create array
v =: >: i. 1000000
NB. convert integers to boxed literal
toboxliteral =: (;/)@:(,/)@:(":"0)

boxv =: toboxliteral v
NB. concatante to string. (remove whitespace)
concat =: >@:-.&(<' ')

NB. Champernowne constant (approx)
champernowne =: concat boxv

NB. get the values
 vals =:0 9 99 999 9999 99999 999999 { champerwone
NB. multiply values to get result.
result =: */@:> @:(". &.>)@:< "0 vals