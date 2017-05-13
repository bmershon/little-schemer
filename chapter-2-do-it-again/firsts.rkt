#lang racket

; The procedure firsts takes a null list or a list that
; contains only non-empty lists and returns either an empty
; list or the first S-expression of each non-empty list in list l.
(provide firsts)
(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (else (cons (car (car l))
                  (firsts (cdr l)))))))