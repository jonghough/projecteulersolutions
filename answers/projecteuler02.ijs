NB. Answer to poject euler question 2

max =: 4000000
sum =: 0
fib =: 3 : 0
f1 =: 0
f2 =: y
tmp =: 0
while. tmp < max do.
ctr =: >: ctr
tmp =: f1 + f2
f1 =: f2
f2 =: tmp
if. 0 = 2 | tmp do.
sum =: sum + tmp
end.
end.
sum
)
