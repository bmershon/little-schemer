#lang racket

(require "../chapter-2-do-it-again/member.rkt")

; Determines if set1 and set2 have at least one
; element in common.
(provide intersect?)
(define intersect?
  (lambda (set1 set2)
    (not (null? (intersect set1 set2)))))

; The intersection of set1 and set2.
(provide intersect)
(define intersect
  (lambda (set1 set2)
    (cond
      ((or (null? set1) (null? set2)) '())
      ; Both set1 and set2 are non-empty sets.
      ((member? (car set1) set2)
          (cons
            (car set1) (intersect (cdr set1) set2)))
      (else
        (intersect (cdr set1) set2)))))