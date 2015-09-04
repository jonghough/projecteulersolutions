NB. solution to Project Euler 22

NB. read the file
data =: fread < '~/Desktop/p022_names.txt'
NB. clean and sort the data
cleaned =/:~ :;:data rplc ',';' '; '"';''

NB. solution
pe22 =: >@:([: +/@:>:@('ABCDEFGHIJKLMNOPQRSTUVWXYZ'&i.)&.> ]) *"0 0 >:@i."_ 0
