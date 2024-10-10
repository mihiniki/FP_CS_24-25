#lang racket

(define (min-if x y)
  (if (<= x y) x y)
  )

(define (min-guard x y)
  (cond
    [(<= x y) x]
    [else y]
    )
  )

(define (min-built-in x y)
  (min x y)
  )

(define (last-digit n)
  (remainder n 10)
  )

(define (quotient-whole x y)
  (quotient x y)
  )

(define (div-whole x y)
  (/ x y)
  )

(define (remove-last-digit n)
  (quotient n 10)
  )

(define (average-whole x y)
  (/ (+ x y) 2)
  )

(define (round-two-dig n)
  (/ (round (* n 100)) 100)
  )


(= (min-if -60 -15) -60)
(= (min-if 15 60) 15)
(= (min-if 60 15) 15)

(= (min-guard 15 60) 15)
(= (min-guard 60 15) 15)

(= (min-built-in 5 6) 5)

(= (last-digit 154) 4)

(= (quotient-whole 64 2) 32)

(div-whole 154 17)

(= (remove-last-digit 154) 15)

(= (average-whole 5 1542) 773.5)

(= (round-two-dig pi) 3.14)