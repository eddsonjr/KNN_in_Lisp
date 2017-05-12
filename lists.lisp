; Listas em Lisp
(write "Listas em lisp")
(terpri)

;lista simples num comando de escrita
(write (list 1 2 3))
(terpri)
; lista simples num comando de escrita, agora contendo as letras a e b
; 
(write (list 'a 'b))
(terpri)

;definindo uma lista atraves de uma variavel
(setq myList (list 1 2 7 5 4 9 0))
(write myList)
(terpri)

; #Algumas funcoes que podem ser usadas com listas#

;car -> recebe como parametro uma lista e retorna o primeiro elemento dela
;(write (car (2 3 5 2))) ; funciona sem problemas com dados do tipo string e char
;(terpri)
(write (car '(j c b d)))
(terpri)

;cdr -> retorna a lista sem o primeiro elemento dela
(write (cdr '(j c b d a)))
(terpri)

;append -> concatena elementos ou listas em uma unica lista
(write (append '(b c) '(a d) '(x g))); concatenando as tres listas
(terpri)

;last -> retorna o ultimo elemento da lista
(write (last '(b c d e)))
(terpri)


;reverse -> inverte a ordem da lista
(write (reverse '(a b c d)))
(terpri)


;criando agora uma lista vazia para trabalhar com ela
(setq mySecoundList ())
(write mySecoundList); imprimira NIL, pois a lista esta vazia
(terpri);

(defvar myWorkList ())
(write myWorkList) ;imprimira NIL
(terpri)

;em Lisp, praticamente tudo o que esta dentro de () pode ser trabalhado 
; como sendo uma funcao ou uma lista
; vamos agora usar mySecoundList e concatenar alguns elementos dentro dela
(setq mySecoundList '(1 2 3))
(write mySecoundList)
(terpri)

;concatenando (adicionando) elementos dentro de mySecoundList
(setq mySecoundList(append mySecoundList(list 5 6 7)))
(write mySecoundList)
(terpri)

;ainda colocando elementos dentro de mySecoundList
(setq mySecoundList(append mySecoundList(list 8)))
(write mySecoundList)
(terpri)

;removendo elementos de uma lista
(write (remove 4 '(1 2 3 4 5)))
(terpri)

;removendo o elemento 8 de mySecoundList
(setq mySecoundList(delete 8 mySecoundList))
(write mySecoundList)
(terpri)

;removendo o elemento 1 de mySecoundList
(setq mySecoundList(delete 1 mySecoundList))
(write mySecoundList)
(terpri)

;verificando se duas listas sao iguais
(setq l1 '(1 2 3 4))
(setq l2 '(1 2 3 4))
(setq l3 '(1 3 4 5))
(write (equal l1 l2)); T is true e NIL e considerado false
(terpri)
(write (equal l1 l3))
(terpri)


;pegando o tamanho de uma lista
(write (list-length '(1 2 3 4 6)));
(terpri)
(terpri)
(terpri)
(write "--------------------------------------")
(terpri)
(write "        Using structs with Lists      ")
(terpri)
(write "--------------------------------------")
(terpri)


;agora vamos usar listas e registros juntos

;definindo uma lista vazia que ira receber os books
(defvar myBookList ())

(defstruct book ; definicao de uma estrutura do tipo book
	title
	author
	subject
	book-id
)

;definindo uma variavel temporaria para adicionar dados na estrutura
(defvar bookTemp (make-book
	:title "C Programming"
	:author "Nuha Ali"
	:subject "C - Programming Tutorial"
	:book-id "A78"))

;agora vamos colocar o temp dentro de myBookList
; para isso use o exemplo abaixo (que ja foi citado acima)
;(setq mySecoundList(append mySecoundList(list 8)))
(setq myBookList(append myBookList(list bookTemp)))

;vamos definir outros livros e coloca - los na lista
; para isso sera utilizado o bookTemp

; #novo registro
(setq bookTemp (make-book ; novo registro
	:title "Lisp for crazy people"
	:author "Nun To Intendu Nadhah"
	:subject "Lisp for coffees!"
	:book-id "A20" ))

(setq myBookList(append myBookList(list bookTemp))); insere na lista


; #novo registro
(setq bookTemp (make-book ; novo registro
	:title "Lisp and Theology - God and Code"
	:author "Nun To Intendu Nadhah"
	:subject "Lisp for coffees!"
	:book-id "A21" ))

(setq myBookList(append myBookList(list bookTemp))); insere na lista

(setq lastBook (nth 1 myBookList))
(write "pegando a segunda posicao:")
(terpri)
(write lastBook)


;imprimindo os elementos da lista de structs na tela
(write "Quantidade de registros: " )
(write (list-length myBookList))
(terpri)
(write "Registros: ")
(terpri)
(terpri)
(write myBookList)
(terpri)
(terpri)

(write "--------------------------------------")
(terpri)
(write "           Lists operations           ")
(terpri)
(write "--------------------------------------")
(terpri)

;pegando os elementos dentro de uma lista
(setq A (nth 2 '(1 2 3 4 5)))
(write A)
(terpri)
(setq A (nth 0 '(1 2 3 4 5)))
(write A)
(terpri)





; abre uma stream para ler o arquivo e vai ate o primeiro espaco em branco
(defparameter in (open "database.txt"))
	(setq string (read in))
	(write string)


 
; (defun LM:str->lst ( str del / pos )
;     (if (setq pos (vl-string-search del str))
;         (cons (substr str 1 pos) (LM:str->lst (substr str (+ pos 1 (strlen del))) del))
;         (list str)
;     )
; )


; (LM "This is a text" " ")











