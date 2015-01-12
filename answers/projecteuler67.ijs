NB. Solution to Project Euler Question 67
NB. Date: January 12 2015
NB. @author Jon Hough

NB. read the file contents
file =: fread < '~/p067_triangle.txt'
 
NB. split into rows and box.
data =: cutopen file
 
NB. verb opens boxed x and y operands, gets pairwise max
NB. value in y array and adds to x. Runs through the whole of
NB. the data to give the final result.
result =: ":@:(".@:[ + 2&(>./\)@:".@:])&.>/ data