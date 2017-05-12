(defstruct node 
   modelo 
   maxsim 
   maxmem
   core
   clock
   ram
   display
   pixel
   fator
   ratio
   qual
)

(setq smartPhoneList ())

(defun createList (book)
  (setq smartPhoneList(append smartPhoneList(list book)))
)

; (defun getDataFromSmartphone (listPos)
;   (setq tempSmart (nth listPos smartPhoneList))
;   (terpri)
;   (write "SmartPhone get: ") 
;   (terpri)
;   (tempSmart)
; )




(defun showListData ()
  (terpri)
  (write "#LIST LOADED DATA#")
  (terpri)
  (write "List length:")
  (write (list-length smartPhoneList))
  (terpri)
  (terpri)
  (write "Data")
  (write smartPhoneList)
  (terpri)
)

(defun contLinha () 
  (setq cont 0)
  (defparameter in (open "database.txt"))
  (when in
    (loop for line = (read-line in nil)
    while line do 
      (incf cont)
    )
   (close in)
   cont
   )
)

(defun addLista ()

  (setq cont (contLinha))
  (setq myList ())
  (defparameter in (open "./database.txt"))
  (loop for x from 0 to cont
    do 
    ( setq book 
    (make-node 
      :modelo (read in)
      :maxsim (read in)
      :maxmem (read in)
      :core (read in)
      :clock (read in)
      :ram (read in)
      :display (read in)
      :pixel (read in)
      :ratio (read in)
      :qual (read in)
      
      )
    
    )
    ;(write book)
    (createList book)
    ;(terpri)
    ;(showListData)
  )
  (close in)
)


























(write (nth 0 addLista))

(setq book2 (addLista))






( setq fila (addLista (nil)))
( setq fila (addLista (fila)))
(write fila)
   

(when *s*
    (loop for line = (read-line *s* nil)
         while line do (format t "~a~%" line))
         
    (close *s*)))















(setq cont 0)
(defparameter in (open "usr/local/Cellar/clisp/2.49_1/knnLisp/database.txt"))
(when in
    (loop for line = (read-line in nil)
    while line do (format t "~d ~a~%" cont line )
      (incf cont)
    )
   (close in)
   )
)

(while line do (format t "~d ~a~%" cont line ))

