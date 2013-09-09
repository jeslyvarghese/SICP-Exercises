(define
  (square x)
    (* x x)
)

(define 
  (sum-of-squares x y)
    (+ 
       (square x)
       (square y)
    )
)

(define
  (largest x y) 
    (if (> x y)
      x
      y
    )
)

(define 
  (sum-of-square-of-largest x y z)
    (if (= x (largest x y) )
      (sum-of-squares x (largest y z))
      (sum-of-squares y (largest x z))
    )
)
