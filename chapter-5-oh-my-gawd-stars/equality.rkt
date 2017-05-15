#lang racket

(require "../chapter-1-toys/atom.rkt")
(require "../chapter-4-numbers-games/eqan.rkt")

; Determines if two S-expressions are equal.
(provide equal?)
(define equal?
  (lambda (s1 s2)
    (cond
      ((and (atom? s1) (atom? s2))
          (eqan? s1 s2))
      ; If only one of the expressions is an atom,
      ; they are not equal.
      ((or (atom? s1) (atom? s2)) #f)
      (else ; Both s-expressions are lists.
          (eqlist? s1 s2)))))

; Determines if two lists are equal.
(provide eqlist?)
(define eqlist?
  (lambda (l1 l2)
    (cond
      ((and (null? l1) (null? l2)) #t)
      ((or (null? l1) (null? l2)) #f)
      (else
       (and
          (equal? (car l1) (car l2))
          (eqlist? (cdr l1) (cdr l2)))))))
      