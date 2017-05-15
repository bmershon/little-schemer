#lang racket

(require "../chapter-1-toys/atom.rkt")

; Inserts new after old wherever old occurs in the list of
; S-expressions.
(define insertR*
  (lambda (new old l)
    (cond
      ((null? l) '())
      ((atom? (car l))
        (cond
          ((eq? (car l) old)
            (cons old (cons new (insertR* new old (cdr l)))))
          (else (cons (car l) (insertR* new old (cdr l))))))
      (else
          (cons
              (insertR* new old (car l))
              (insertR* new old (cdr l)))))))