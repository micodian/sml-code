datatype 'element mylist =
    NIL |
    CONS of 'element * 'element mylist;

fun prod NIL = 1
|   prod (CONS (head, tail)) = head * prod (tail);

fun append NIL NIL = NIL
|   append NIL (CONS (head, tail)) = CONS (head, tail)
|   append (CONS (head, tail)) NIL = CONS (head, tail)
|   append (CONS (head1, tail1)) (CONS (head2, tail2)) =
        append (tail1) (CONS (head1, (CONS (head2, tail2))));

fun reverse NIL = NIL
|   reverse (CONS (head, tail)) =
        let
            fun reverseHelper (NIL, NIL) = NIL
            |   reverseHelper (CONS (head, tail), NIL) = CONS (head, tail)
            |   reverseHelper (NIL, CONS (head, tail)) = CONS (head, tail)
            |   reverseHelper (CONS (head1, tail1), CONS (head2, tail2)) =
                    reverseHelper (CONS (head2, CONS (head1, tail1 )), tail2);
        in
            reverseHelper (CONS (head, NIL), tail)
        end;        






(*
datatype 'a mylist = CONS of 'a * 'a mylist | NIL

val prod = fn : int mylist -> int

val append = fn : 'a mylist -> 'a mylist -> 'a mylist

val reverse = fn : 'a mylist -> 'a mylist

val it = () : unit


- infixr 5 CONS;
infixr 5 CONS

- val a = 1 CONS 2 CONS 3 CONS NIL;
val a = 1 CONS 2 CONS 3 CONS NIL : int mylist

- val b = 4 CONS 5 CONS NIL;
val b = 4 CONS 5 CONS NIL : int mylist

- val c = append a b;
val c = 3 CONS 2 CONS 1 CONS 4 CONS 5 CONS NIL : int mylist

- val d = prod c;
val d = 120 : int

- val e = reverse c;
val e = 5 CONS 4 CONS 1 CONS 2 CONS 3 CONS NIL : int mylist




)        