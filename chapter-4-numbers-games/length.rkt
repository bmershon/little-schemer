#lang racket

; Length of the given list of S-expressions.
(define length
  (lambda (l)
    (cond 
      ((null? l) 0)
      (else  (+ 1 (length (cdr l)))))))