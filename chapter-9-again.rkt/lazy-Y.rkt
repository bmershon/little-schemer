#lang lazy

(require "./lazy-factorial.rkt")

; This Y-combinator only works when lazy-evaluation is supported.
(define Y 
  (lambda (wrapper)
    ((lambda (x) (x x))
     (lambda (x) (wrapper (x x))))))

(define almost-factorial
  (lambda (f)
    (lambda (n)
      (if (= n 0)
          1
          (* n (f (- n 1)))))))

(Y almost-factorial)