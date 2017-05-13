#lang racket

; Insert new to the left of the first occurrence of old in the
; list of atoms lat.
(provide subst)
(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old) (cons new (cdr lat)))
      (else (cons (car lat) (subst new old (cdr lat)))))))