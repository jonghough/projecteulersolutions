open Core.Std

	
let sums x = 
  List.fold (List.filter (Array.init x (fun i -> i) |> Array.to_list ) (fun n -> (n mod 5 = 0 || n mod 3 = 0))) (~init:0) (~f:fun acc a -> a + acc);;

let () = 
	let k = sums 1000 in
	printf "sum2 is %d\n" k 
