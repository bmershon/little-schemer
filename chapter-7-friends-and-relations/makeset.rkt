#lang racket

(require "../chapter-2-do-it-again/member.rkt")

; Turns a lat into a set by removing duplicates. The elements
; which remain are the last occurences in the list of elements
; of their respective duplicates.
(define makeset
  (lambda (lat)
    (cond
      ((null? lat) '())
      ((member? (car lat) (cdr lat))
          (makeset (cdr lat)))
      (else
          (cons (car lat) (makeset (cdr lat)))))))