// Aplicação de função de ordem superior
// Função de ordenar uma lista, a condição da ordenação
// será definida pela função passada como parâmetro
( defun ordena(fun L)
    ( cond
        ( (null L) nil)
        ( T (cons (funcall fun L) (ordena fun (remove (funcall fun L) L) )) )
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