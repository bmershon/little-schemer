#lang racket

; Insert new to the right of the first occurrence of old in the
; list of atoms lat.
(provide insertR)
(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old) (cons old (cons new (cdr lat))))
      (else (cons (car lat) (insertR new old (cdr lat)))))))