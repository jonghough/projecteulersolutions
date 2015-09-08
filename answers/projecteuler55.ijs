NB. Solution to Project Euler problem 55

NB. Is palindrome check for strings
pal=: -:|.

NB. check if palindrome after less than
NB. 50 iterations.
palcheck =: 3 : 0
N =. x:y
it=. 0
while. (it < 50) do.
N =. (N+ ".|.":x:N)
it =. it+1
if. pal ":N do.
1
return.
else. continue. end.
end.
0
)

NB. solution (note: slightly slow, since just need to do 10000 - the number of palcheck=1's)
# (0&=@:palcheck"0 # ]) i.10000
