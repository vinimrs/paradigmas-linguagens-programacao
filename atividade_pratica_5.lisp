// Aplicação de função de ordem superior
// Função de ordenar uma lista, a condição da ordenação
// será definida pela função passada como parâmetro
( defun ordena(fun L)
    ( cond
        ( (null L) nil)
        ( T (cons (funcall fun L) (ordena fun (remover (funcall fun L) L) )) )
    )
)

( defun remover(e L)
    ( cond
        ( (equal e (car L)) (cdr L) )
        ( T (cons (car L) (remover e (cdr L)) ) )
    )
)

( defun menor(L) 
    ( cond
        ( (null (cdr L)) (car L) )
        ( (< (car L) (menor (cdr L)) ) (car L))
        ( T (menor (cdr L)) )
    )    
)

( defun maior(L) 
    ( cond
        ( (null (cdr L)) (car L) )
        ( (> (car L) (maior (cdr L)) ) (car L))
        ( T (maior (cdr L)) )
    )    
)

// uso de lambda na chamada de ordena
( ordena (function (lambda (L)     
    ( cond
        ( (null (cdr L)) (car L) )
        ( (< (car L) (menor (cdr L)) ) (car L))
        ( T (menor (cdr L)) )
    )   )) '(1 90 14 89 2 33)
)

// uso de MAPCAR com lambda
(mapcar (lambda (x y)
          (min x Y))
        '(1 2 3 20 10)
        '(20 32 12 9 8)
)