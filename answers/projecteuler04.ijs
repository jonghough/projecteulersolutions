NB. Solution to Project Euler Question 10.

base =. "."0 ":

NB. Tests if y value is palindrome.
is_palindrome =. (# =)@:(=|.)@:base

NB. multiply all 3 digit nums (100 ~ 999)
mult =: (* is_palindrome"0) @ (*/)   

NB. Create list of 3 digit nums.
list =. 100+ i.900

(>./)@:, list mult list
