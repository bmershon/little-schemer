#lang racket

(require "../chapter-2-do-it-again/member.rkt")

; Determines if the list of atoms lat1 is a subset
; of the list of atoms lat2.
(provide subset?)
(define subset?
  (lambda (lat1 lat2)
    (cond
      ((and (null? lat1) (null? lat2)) #t)
      ; The empty set is a subset of any set;
      ((null? lat1) #t)
      ; A non-empty set cannot be a subset of an empty set.
      ((null? lat2) #f)
      ; Each element in lat1 must be in lat2 for lat1 to be
      ; a subset of lat2.
      (else
          (and (member? (car lat1) lat2)
               (subset? (cdr lat1) lat2))))))
          