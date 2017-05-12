
(format t "Hello world in lisp~%")
(format t "Este programa define as quatro operacoes basicas como funcoes em lisp ~%")
(format t "Vamos comecar...~%")

(defvar x 2)
(defvar y 2)

(defun plus(n1 n2)
    (+ n1 n2)
)

(defun minus(n1 n2)
    (- n1 n2))

(defun mult(n1 n2)
    (* n1 n2))

(defun div(n1 n2)
    (if (> n2 0) 
        (/ n1 n2) (write "ERRO: Divisao por zero nao aceita!"))
    )


;(defun averagenum (n1 n2 n3 n4)\
;   (/ ( + n1 n2 n3 n4) 4)\
;)\
;(write(averagenum 10 20 30 40))\

(format t "~% Somando: ~d" (plus x y))
(format t "~% Subtraindo: ~d" (minus x y))
(format t "~% Multiplicando: ~d" (mult x y))
(format t "~% Dividindo: ~d" (div x y ))
