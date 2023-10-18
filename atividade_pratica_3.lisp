(defun cjtosiguais(c1 c2) 
    (cond 
        ( (member (nth 0 c1) c2) (cjtosiguais (cdr c1) c2))
        ( (null c1) T )
    )
)

(defun somaN(n) 
    (cond
        ( (zerop n) 0)
        ( T ( + n (somaN (- n 1)) ))
    )
)