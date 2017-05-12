; CSV Files in Lisp

;Criando uma estrutura para representar os dados retirados de cada linha do arquivo
(defstruct myStruct
	l1
	l2
	l3
)
;lista de estruturas
(setq myStructList ())


;Lista de linhas lidas do arquivo txt
(setq myLines ())

;funcao para separar uma string no formato csv e coloca - la em uma lista
(defun comma-split (string)
  (loop for start = 0 then (1+ finish)
        for finish = (position #\, string :start start)
        collecting (subseq string start finish)
        until (null finish)))

;lendo um arquivo txt qualquer e quebrando as linhas e pondo em uma unica lista
(let ((in (open "my_file2.csv" :if-does-not-exist nil)))
  (when in
    (loop for line = (read-line in nil)
         while line do 
         	;concatenando a lista
         	(setq myLines(append myLines(list line))) ; com isso o arquivo inteiro foi posto dentro de uma lista
         )
    (close in)))



(defun getInfosFromFile ()
	(setq tempLine (nth 0 myLines));pegando a primeira posicao da lista que representa as infos do arquivo
  (setq fields (comma-split (nth 0 myLines)); separando os campos
  (write fields)	

)

(getInfosFromFile)





 



; (defun comma-split (string)
;   (loop for start = 0 then (1+ finish)
;         for finish = (position #\, string :start start)
;         collecting (subseq string start finish)
;         until (null finish)))


; (defun write-with-periods (strings)
;   (format t "~{~A~^.~}" strings))

;vamos agora retirar linha por linha do arquivo csv
; (setq line1 (nth 0 myLines))
; (write "First line of file:")
; (write line1)

; Definindo uma funcao ir pegando os elementos da linha 1 e ir retirando as informacoes 
; pertinentes

; (setq line1 ())
; (defun getInfosFromFile ( )
; 	;primeirmaente vamos pegar a primeira posicao da lista que reperesnta a primeira linha do arquivo
; 	(setq line1(append (nth 0 myLines)))
; 	(write line1) 
; 	(terpri)
; 	;agora vamos pegar cada informacao que esta representada na linha
; 	(setq info1Temp (cdr line1))
; 	(write info1)



; 	;vamos agora retirar a primeira informacao da primeira linha
; 	;apos essa informacao ser retirada, ela sera salva e a lista que contem os dados da 
; 	;primeira linha sera atualizada, para remover dado por dado
; 	;(extractInfosFromLine line1)
; ) 

; (defun extractInfosFromLine (line1)
; 	(write "Inside extractInfosFromList")
; 	;condicional para verificar se a funcao devera retornar ou nao
; 	(cond 
; 		((null line1)	
; 		0); caso a lista esteja vazia, retorne
; 		  ;caso contrario continue a proceder
; 	(t
; 		(write "running")
; 		;pegando a primeira informacao da lista que representa a 1a linha do arquivo
; 		(setq info (cdr line1)) 

; 		(extractInfosFromLine line1)
; 	)

; 	)
; )


; (getInfosFromFile)




; ;(setq myList (remove 'rose  myList))
; ;(VIOLET WHITE)




























; ; #ATENCAO: OS CODIGOS ABAIXO NAO FUNCIONAM

; ;(defun get-file (filename)
; ;  (with-open-file (stream filename)
; ;    (loop for line = (read-line stream nil)
; ;          while line
; ;          collect line)))

; ;(get-file "my_file.csv")
; ;(setq myBookList(append myBookList(list bookTemp)))


; ; (defvar myList ())
; ; (defun get-file (filename)
; ;   (with-open-file (stream filename)
; ;     (loop for line = (read-line stream nil)
; ;           while line
; ;           collect line))
; ;   	(setq myList (copy-list line)))


; ; (defvar myList ())
; ; (defun get-file (filename)
; ;   (with-open-file (stream filename)
; ;     (loop for line = (read-line stream nil)
; ;           while line
; ;           collect))
  	



