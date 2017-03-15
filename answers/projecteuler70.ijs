NB. Answer to Project EUler Question 70

totient=: (- ~:)&.q:                NB. define totient
strsort=: /:~@:":                   NB. stringify and sort
g=: strsort@:totient -: strsort     NB. comparison

indices =: >: I. g"0 >: i. 10000000 NB. get numbes for which g is true, between 1 and 10^7
<./ ([ %totient) }. x: indices      NB. answer is the numerator of this fraction
