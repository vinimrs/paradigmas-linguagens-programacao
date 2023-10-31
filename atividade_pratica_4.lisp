// 2 - nro-ocorrencia: recebe um elemento e uma lista qualquer, 
// retorna o número de ocorrências do elemento na lista
( defun nro-ocorrencia(n L)
    ( cond
        ( (null L) 0)
        ( (equal n (car L)) (+ (nro-ocorrencia n (cdr L)) 1) )
        ( T (nro-ocorrencia n (cdr L)) )
    )
)

// 8- interseccao: recebe duas listas sem elementos repetidos e 
// retorna uma lista com os elementos que são comuns às duas
// ex.::( interseccao ‘(5 16 3 7)  ‘(2  10 7  5 11) )  retorna    (5   7)
( defun interseccao(L1 L2)
    ( cond
        ( (null L1) nil )
        ( (member (car L1) L2) (cons (car L1) (interseccao (cdr L1) L2)) )
        ( T (interseccao (cdr L1) L2) )
    )
)

// 10- ordenado: recebe uma lista de números e 
// verifica se eles estão ordenados ou não
( defun ordenado(L)
    ( cond
        ( (null (cadr L)) T )
        ( (> (cadr L) (car L)) (ordenado (cdr L)) )
        ( T nil )
    )
)