fun partition (pivot, nil) = (nil, nil)
|   partition (pivot, first::rest) =
      let
        val (small, large) = partition (pivot, rest)
      in
        if first < pivot
          then (first::small, large)
          else (small, first::large)
      end;

fun quickSort nil = nil
|   quickSort [single] = [single]
|   quickSort (first::rest) =
      let
        val (small, large) = partition(first, rest)
      in
        quickSort(small) @ [first] @ quickSort(large)
      end;









(*

- use "MichaelEtiobhioProjTwo.sml";                                        
[opening MichaelEtiobhioProjTwo.sml]
val partition = fn : int * int list -> int list * int list

val quickSort = fn : int list -> int list

val it = () : unit

- val x = [3,1,4,8,9,5,7,6,2,0];
val x = [3,1,4,8,9,5,7,6,2,0] : int list
- quickSort x;
val it = [0,1,2,3,4,5,6,7,8,9] : int list

- val y = [2,1,5,7,8,4,3,1,0];
val y = [2,1,5,7,8,4,3,1,0] : int list

- quickSort y;
val it = [0,1,1,2,3,4,5,7,8] : int list

*)