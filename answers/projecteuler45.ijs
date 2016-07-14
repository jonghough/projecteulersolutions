triangle =. -:@:( * >:)

pa =. 3 _1 NB. coefficients for pentagonal number polynomial

ha =. 2 _1 NB. coefficients for hexagonal number polynomial

NB. is pentagonal
isPen =:1&e.@:((= <.) *. (0&<) )@:>@:(1&{)@:p.@:|.@:(pa&,)@:(_2&*@:triangle)

NB. is hexagonal
isHex =:1&e.@:((= <.) *. (0&<) )@:>@:(1&{)@:p.@:|.@:(ha&,)@:(_1&*@:triangle)


>./ triangle I. (isHex *. isPen)"(0) i. 100000x
