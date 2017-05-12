; #LISP - LOOPS#
; Este codigo serve para demonstrar como executar loops no Lisp (common lisp)


;vejamos como executar um laco for de acordo com uma lista
(loop for x in '(a b c d e)
	do (write x);imprime cada elemento da lista (representado por x)
)
(terpri)

;vejamos como percorrer um laco de um valor inicial ate o valor final
(loop for x from 0 to 10 ; x inicia de 0 e vai ate 10
	do  (write x); imprime o contador na tela
		(terpri)	
)

(terpri)
(terpri)
(write "-------------------WHILE----------------------")
(terpri)

;loop while
(setf  z 0)
(loop while (<= z 10) ; corpo do while (cabecalho da macro while)
	do
		(write z) ; imprime o z
		(terpri)
		(setq z(+ 1 z)) ; incrementa o z de 1 em 1
)

(terpri)
(terpri)


(write "------------Loops aninhados-----------------")
(terpri)
(setf i 0)
(loop while (<= i 10)
	do
		(write "Loop externo I: ") (write i)
		(terpri)
		(loop for x from 1 to 10
			do (write x)
			   (if (< x 10)
			   		(write "-"))
		)
	(setq i(+ 1 i))
	(terpri)
)











