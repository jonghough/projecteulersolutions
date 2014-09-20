NB. Project Euler
NB. problem 43

NB. Get the anagrams of 10 digits.
anagram =. (i. !) A. i.
a10 =. anagram 10

NB. digits to numeric
numerify =. ,/@:":"0

d2 =. (0&=)@:(2&|)@:".@:numerify@:(1 2 3&{)
d3 =. (0&=)@:(3&|)@:".@:numerify@:(2 3 4&{)
d5 =. (0&=)@:(5&|)@:".@:numerify@:(3 4 5&{)
d7 =. (0&=)@:(7&|)@:".@:numerify@:(4 5 6&{)
d11 =. (0&=)@:(11&|)@:".@:numerify@:(5 6 7&{)
d13 =. (0&=)@:(13&|)@:".@:numerify@:(6 7 8&{)
d17 =. (0&=)@:(17&|)@:".@:numerify@:(7 8 9&{)

test =. (d2*.d3*.d5*.d7*.d11*.d13*.d17)

NB. add the results that pass the test and are greater than the
NB. first 9! permutations (i.e. ignore permutations which do not
NB. contain 0.
+/@:(*(987654321&<))@:".@:numerify@:((I.@:(test"1)) { ])