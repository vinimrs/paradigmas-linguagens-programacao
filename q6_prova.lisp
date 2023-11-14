( defun encontrar(L E1 E2) 
    ( cond 
        ( ( equal (+ 1 (pos E1 L)) (pos E2 L) ) (pos E1 L) )
        ( T nil )
    )
)

( defun pos(E L)
    ( cond 
        ( (null L) nil )
        ( ( equal E (car L) ) 0 )
        ( T ( + 1 (pos E (cdr L)) ) )
    )
)