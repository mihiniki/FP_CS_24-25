#lang racket

(define (fib-iter n)
  (define (helper n1 n2 count)
    (cond
      [(zero? count) n1]
      [else (helper n2 (+ n1 n2) (sub1 count))]
      )
    )

  (helper 0 1 n)
  )

(define (fib-rec n)
  (cond
    [(zero? n) 0]
    [(= n 1) 1]
    [else (+ (fib-rec (sub1 n)) (fib-rec (- n 2)))]
    )
  )

 (fib-iter 11)
(= (fib-rec 11) 89)