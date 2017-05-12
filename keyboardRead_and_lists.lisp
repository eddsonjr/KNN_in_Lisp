; Este programa ira realizar algumas operacoes em lisp com dados entrados do teclado
; tambem realizara operacoes com listas 
;
; Edson Jr
; 22/02/2017
;
;


(format t "Hello world in lisp - Keyboard read and lists ~%")
(format t "Este codigo de exemplo em lisp ira ler valores do teclado e realizar operacoes ~% ~%")

; Lendo duas variaveis x e y
(princ "Entre com um valor: ")
(setq x (read))
(princ "Entre com um outro valor: ")
(setq y (read))


;Abaixo estao algumas funcoes que irao realizar as 4 operacoes


;soma dois numeros
(defun plus(n1 n2)
    (+ n1 n2)
)


;subtrai dois numeros
(defun minus(n1 n2)
    (- n1 n2))




;multiplica dois numeros
(defun mult(n1 n2)
    (* n1 n2))



;divide dois numeros
(defun div(n1 n2)
    (if (> n2 0) 
        (/ n1 n2) (write "ERRO: Divisao por zero nao aceita!"))
)



(format t "~% Somando: ~d" (plus x y))
(format t "~% Subtraindo: ~d" (minus x y))
(format t "~% Multiplicando: ~d" (mult x y))
(format t "~% Dividindo: ~d" (div x y ))


;abaixo esta uma funcao que ira realizar a media dos valores lidos
(defun media (n1 n2)
	(/ (+ n1 n2) 2) ;soma os dois valores e realiza a media
)

; imprimindo a media
(format t "~% Media dos dois valores lidos: ~d " (media x y ))



;Vamos agora implementar a verificacao de existencia de um triangulo

(format t "~% ~%Definindo a existencia de um triangulo. ~%")
(format t "~% Informe tres valores para os lados A, B e C do triangulo: ~%")
(princ "Valor de A:")
(setq a (read))
(princ "Valor de B:")
(setq b (read))
(princ "Valor de C: ")
(setq c (read))


;Definindo a funcao de verificacao de existencia

(defun TriangleExists (a b c)
	(if (< (abs (- b c)) a) 
		(write "|b-c| é menor que a -- ") (write " |b-c| é maior que a -- "))

	(if (< (abs (- b a)) c)
		(write "|b-a| é menor que c -- ") (write " |b-a| é maior que c -- "))

	(if (< (abs (- c a)) b)
		(write "|c-a| é menor que b -- ") (write "|c-a| é maior que b") )

	; Falta terminar o restante de cada tipo de condicao.
	


	;(if (< abs(minus b c) (plus b c) a ) 
	;	(write ("Ok, lado 1 bateu"))  
	;		write("Nao e um triangulo!")) 
) 


(TriangleExists a b c)


(defvar h)
(defvar c1)
(defvar c2)


(defun newTrinagleExists (a b c)


)


