#lang racket

(define (not-equal-one-line? x y)
  (not (= x y))
  )

(define (not-equal-guards? x y)
  (cond
    [(= x y) #f]
    [else #t]
    )
  )

(define (inside? start finish x)
 ; (< (min start finish) x (max start finish))
  (and (< (min start finish) x) (< x (max start finish)))
  )

(equal? (not-equal-one-line? 5 2) #t)
(equal? (not-equal-one-line? 5 5) #f)

(equal? (not-equal-guards? 5 2) #t)
(equal? (not-equal-guards? 5 5) #f)

(equal? (inside? 1 5 4) #t) ; start = 1, finish = 5, x = 4
(equal? (inside? 5 1 4) #t)
(equal? (inside? 10 50 20) #t)
(equal? (inside? 10 50 1) #f)