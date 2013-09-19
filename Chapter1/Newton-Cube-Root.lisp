;;;;Cube Root by Newton's Method
;;;;For a number x, y as the guess
;;;;for cube root, the guess can be 
;;;;improved by value (x/y^2+2y)/3


(define (cube-root-iter guess x)
		(if (good-enough? guess x)
				guess
				(cube-root-iter (improve guess x) x)
			)
	)

(define (good-enough? guess x)
		(< 
			(abs
				(- 
					guess 
					(improve guess x)
					)
				)
			(* 0.001 guess)
		)
	)
(define (improve y x)
		(/
			(+
				(/ 
					x
					(square y)
					)
				(*
					2
					y)
				)
			3
			)
	)
(define (square x)
		(* x x)
	)