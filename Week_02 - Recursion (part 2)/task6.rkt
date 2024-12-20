#lang racket

#|
A narcissistic number is a number which is the sum of
its own digits, each raised to the power of the number
of digits in a given base.

Define a predicate that checks whether a given number
is a narcissistic number.

For example, take `153` (`3` digits):

```text
1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
```

and `1634` (`4` digits):

```text
1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
```

**Acceptance criteria:**

1. All tests pass.
2. Only linearly recursive processes are used.
3. Show how `racket/trace` can help.
|#
(define (num-len n)
  (if (< n 10)
      1
      (add1 (num-len (quotient n 10)))
      )
  )

(define (narcissistic? n)
  (define (helper leftover sum)
    (cond
      [(zero? leftover) (= sum n)]
      [else (helper (quotient leftover 10)
                    (+ sum (expt (remainder leftover 10) (num-len n))))]
      )
    )
  (helper n 0)
  
  )

(equal? (narcissistic? 7) #t)
(equal? (narcissistic? 12) #f)
(equal? (narcissistic? 153) #t)
(equal? (narcissistic? 370) #t)
(equal? (narcissistic? 371) #t)
(equal? (narcissistic? 1634) #t)
