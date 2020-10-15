

fun mymap1 f [] = []
  | mymap1 f (x::xs) = f(x)::mymap f xs;


fun mymap2 f xs =
    let fun aux [] acc = acc
	  | aux (x::xs) acc = aux xs (f(x)::acc)
    in
	rev (aux xs [])
    end;  


fun mylength l = foldr(fn (_, b) => b + 1) 0 l;     

fun ordList x = map ord x;    

fun max (x::xs) = foldr(fn(a,b) => if(a > b) then a else b) x xs;






(*
- use "MichaelEtiobhioProj3.sml";
[opening MichaelEtiobhioProj3.sml]
val mymap1 = fn : ('a -> 'b) -> 'a list -> 'b list

val mymap2 = fn : ('a -> 'b) -> 'a list -> 'b list

val mylength = fn : 'a list -> int

val ordList = fn : char list -> int list

MichaelEtiobhioProj3.sml:19.5-19.65 Warning: match nonexhaustive
          x :: xs => ...
  

val max = fn : int list -> int

val it = () : unit

- mylength [2,3,4,6,7,8,9,21];
val it = 8 : int

- ordList [#"A",#"b",#"C"];                 
val it = [65,98,67] : int list

- max [1,3,6,8,3,10,21,2,7];
val it = 21 : int
*) 





