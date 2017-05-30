#lang lazy

(require "./lazy-factorial.rkt")

; This Y-combinator only works when lazy-evaluation is supported.
(define Y
  (lambda (f)
    ((lambda (x) (f (x x)))
     (lambda (x ) (f (x x ))))))