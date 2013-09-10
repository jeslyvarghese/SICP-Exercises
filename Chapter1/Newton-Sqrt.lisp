;;;Square Root by Newton's Method
;;;To find sqrt of a number x, if we can make a guess y,
;;;then our guess can be improved by averaging y and x/y
;;;this step repeats until we get a proper sqrt or a number who's
;;;square is with a diff of 0.001

(define (sqrt-iter guess x)
		(if (good-enough? guess x)
				guess
				(sqrt-iter (improve guess x) x)
			)
	) 	

(define (improve guess x)
		(average guess (/ x guess))
	)
(define (average x y)
		(/ (+ x y) 2)
	)
(define (good-enough? guess x)
		(<(abs(- (square guess) x)) 0.001)
	)
(define (square x)
	(* x x)
	)
