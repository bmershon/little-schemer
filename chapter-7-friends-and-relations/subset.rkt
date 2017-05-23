#lang racket

(require "../chapter-2-do-it-again/member.rkt")

; Determines if set1 is a subset of set2.
(provide subset?)
(define subset?
  (lambda (set1 set2)
    (cond
      ((and (null? set1) (null? set2)) #t)
      ; The empty set is a subset of any set.
      ((null? set1) #t)
      ; A non-empty set cannot be a subset of an empty set.
      ((null? set2) #f)
      ; Each element in set1 must be in set2 for set1 to be
      ; a subset of set2.
      (else
          (and (member? (car set1) set2)
               (subset? (cdr set1) set2))))))
          