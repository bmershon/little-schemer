#lang racket

(require "../chapter-2-do-it-again/member.rkt")

; Determines if the list of atoms lat is a set.
(define set?
  (lambda (lat)
    (cond
      ((null? lat) #t)
      ((member? (car lat) (cdr lat)) #f)
      (else (set? (cdr lat))))))