; Definicao de variaveis  
; 
;
; Para definir uma variavel global, voce pode usar a instrucao  defvar

(defvar a 12) ; isto define uma variavel global
(format t "A variavel global A equivale a: ~2d ~% " a) ; isso imprime uma mensagem com a variavel

; e possivel tambem declarar uma variavel usando a instrucao setq, uma vez que variaveis sao
; simbolos em lisp, setq define um valor para um simbolo

(setq w 4)
(format t "Usando setq. O valor da variavel equivale a ~2d ~%" w)


; variaveis locais sao definidas dentro de funcoes e procedimentos
; geralmente usa - se a instrucao let para definir variaveis locais
; mas e possivel usar setq tambem para defini-las

(defun globlaEscopeFuncTest () ; acessando a variavel global dentro de uma funcao

	(format t "~% ~% Acessando a variavel global dentro de uma funcao.")
	(format t "A variavel global A equivale a [acessada dentro de funcao]: ~2d ~% " a)
)

(globlaEscopeFuncTest)


(defun localVariables () ; testando variaveis locais

	(setq j 10)
	(format t "~% Variaveis locais usando setq: ~a" j ) 
)

(localVariables)




