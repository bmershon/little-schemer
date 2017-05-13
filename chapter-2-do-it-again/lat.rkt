#lang racket

(require "../chapter-1-toys/atom.rkt")

; The List of atoms operator recursively asks first if the list is null (if so,
; the (lat? l) trivially evaluates to true) and then recursively checks that the
; first element of the current argument is an atom AND that the remainin
; elements of the list form a list of atoms.
(provide lat?)
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))