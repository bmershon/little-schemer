#lang racket

; Adds corresponding numbers of two equal-length tuples
; to one another. If both tuples are empty, tup+ a b
; evaluates to the empty list.
(define tup+
  (lambda (t1 t2)
    (cond 
      ((null? t1) t2)
      ((null? t2) t1)
      (else
        (cons
            (+ (car t1) (car t2))
            (tup+ (cdr t1) (cdr t2)))))))