#lang racket

(require "../chapter-1-toys/atom.rkt")
(require "lat.rkt")

; Recursively asks if atom a is a member of the list of atoms lat. If lat is
; null, the procedure trivially evaluates to false. Recursion occurs on the
; lat that has been modified by lopping off the first element of the list and
; asking if a is a member of that list (by inspecting the first element).
(provide member?)
(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? (car lat) a)
                (member? a (cdr lat)))))))