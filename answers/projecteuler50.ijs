NB. Project Euler
NB. problem 50

NB. Method used trial anderror to find the answer. This method
NB. Needs improving. 

NB. Get prime list less than y
pl =: (I. @: (1&p:)) { ]

NB. by trial and error
>./(]*((1&=)@:((1&p:)*.(1000000&>))))@:((543)&(+/\))@:pl i.1000000
NB.997651