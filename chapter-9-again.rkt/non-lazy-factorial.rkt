#lang racket

; Y provides the fixpoint (fixed point)
; of the given function f.
(define Y
  (lambda (f)
    ; Because lambda functions are only evaluated when they are applied
    ; to their arguments, this implementation of Y is recursive but does
    ; not blow-up due to strict evaluation.
    (f (lambda (x) ((Y f) x)))))

(define almost-factorial
  (lambda (f)
    (lambda (n)
      (if (= n 0)
          1
          (* n (f (- n 1)))))))

(define factorial (Y almost-factorial))