#lang racket

; Insert new to the left of the first occurrence of old in the
; list of atoms lat.
(provide insertL)
(define insertL
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old) (cons new (cons old (cdr lat))))
      (else (cons (car lat) (insertL new old (cdr lat)))))))