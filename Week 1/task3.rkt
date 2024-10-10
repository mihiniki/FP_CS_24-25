#lang racket

(define (fact-rec n)
  (cond
    [(negative? n) (error "n must be non-negative")]
    [(zero? n) 1]
    [else (* n (fact-rec (sub1 n)))]
    )
  )

(define (fact-iter n)
  (define (helper result leftover)
    (if (zero? leftover) result
        (helper (* result leftover) (sub1 leftover))
        )
    )

  (if (negative? n) (error "n must be non-negative")
      (helper 1 n)
      )
  )



(= (fact-rec 0) 1)
(= (fact-rec 1) 1)
(= (fact-rec 11) 39916800)

(= (fact-iter 0) 1)
(= (fact-iter 1) 1)
(= (fact-iter 11) 39916800)