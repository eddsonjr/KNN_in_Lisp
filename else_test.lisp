(format t "~% insira dois valores: ~%")
(setq a (read))
(setq b (read))


(defun AB (a b)
	(if (< a b)
		(write "A menor que B") (write "B menor que A"))
)

(AB a b)
