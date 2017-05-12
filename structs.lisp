;Este arquivo serve para demonstrar como se pode construir 
;uma estrutura (struct - equivalente em C) em lisp

; para definir uma estruct, usa - se a macro defstruct
;exemplo:

(defstruct book
	title
	author
	subject
	book-id
)

; para conseguir acessar a estrutura e por seus elementos dentro, use setq

(setq book1 (make-book  ; criando o livro 1
	:title "C Programming"
	:author "Nuha Ali"
	:subject "C - Programming Tutorial"
	:book-id "A78"))


(setq book2 (make-book ; cirando o livro 2
	:title "Python programming for dummies"
	:author "Zen Xuxu"
	:subject "Python programming for idiots"
	:book-id "501"))


; vamos agora imprimir os books 1 e 2
(write book1)
(terpri) ; serve para ajustar a saida no console
(write book2)
(terpri)
(write "PEGANDO UM REGISTRO DENTRO DA ESTRUTURA")
(write (getf book1 :title))

; a saida via terminal equivale a:
;#S(BOOK :TITLE "C Programming" :AUTHOR "Nuha Ali"
;   :SUBJECT "C - Programming Tutorial" :BOOK-ID "A78")
;#S(BOOK :TITLE "Python programming for dummies" :AUTHOR "Zen Xuxu"
;   :SUBJECT "Python programming for idiots" :BOOK-ID "501")


;vamos definir um book 3 e copiar os dados do book1 para ele
(setq book3(copy-book book1))
(write book3)
(terpri)


; vamos agora mudar alguns dados do book3
(setf (book-book-id book3) "A79") ; mudando o id do livro
(setf (book-title book3) "Lisp for motherfucks!") ; mudando o titulo do livro
(setf (book-subject book3) "Lisp escroto!") ; mudando o subject do livro
(write book3)
(terpri)

;acima, restaram praticamente somente o nome do autor que se manteve igual
; ao do livro 1, lembrando que o book3 é uma copia do book1


;"apagando" o book3 [fazendo ele receber nil (equivalente ao null do Java/C++)]
(setq book3 nil)
(write book3)



;criando uma lista com os livros ja definidos
(setq books (list book1 book2 book3))
(write books)
(terpri)
; note que o ultimo elemento sera nil, isso pq acima definimos o book 3 como sendo nil


