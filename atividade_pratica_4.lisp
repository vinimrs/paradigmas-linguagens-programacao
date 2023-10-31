// 2 - nro-ocorrencia: recebe um elemento e uma lista qualquer, 
// retorna o número de ocorrências do elemento na lista
( defun nro-ocorrencia(n L)
    ( cond
        ( (null L) 0)
        ( (equal n (car L)) (+ (nro-ocorrencia n (cdr L)) 1) )
        ( T (nro-ocorrencia n (cdr L)) )
    )
)