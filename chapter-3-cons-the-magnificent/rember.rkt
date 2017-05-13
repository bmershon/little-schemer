#lang racket

(require "member.rkt")

; Evaluates to the list of atoms lat with the first occurrence of the atom
; a removed from lat.
(provide rember)
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) a) (cdr lat))
      (else (cons (car lat)
                  (rember a (cdr lat)))))))