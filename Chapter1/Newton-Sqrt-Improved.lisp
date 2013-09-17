;;;Square Root by Newton's Method
;;;To find square root of a number,
;;;say x, we make a guess y. Inorder
;;;to improve our guess, we take avergae
;;;between y, x/y.
;;;This is repeated over until there is no 
;;;considerable difference between subsequent
;;;guesses

(define (sqrt-itr guess x)
	(if (good-enough? guess x)
			guess
			(sqrt-itr (improve guess x) x)
		)
	)

(define (good-enough? guess x)
	(< (abs (- 
						(improve guess x)
						 guess
						 )
			)
		(* guess .001)
	)
)
(define (improve guess x)
	(avergae guess (/ x guess))
	)
(define (avergae x y)
	(/ (+ x y) 2)
	)

