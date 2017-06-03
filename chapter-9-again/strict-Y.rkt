#lang racket

(define almost-factorial
  (lambda (f)
    (lambda (n)
      (if (= n 0)
          1
          (* n (f (- n 1)))))))

; The applicative-order Y Combinator which
; works when strict evaluation is used.
(define Y
  (lambda (f)
    ((lambda (x) (x x))
     ; The statement below serves as x in the above statement, kicking
     ; off a chain which f with a lambda-delayed function which, when
     ; called, will call itself.
     (lambda (h) (f (lambda (g) ((h h) g)))))))

; Example usage.
((Y almost-factorial) 5)