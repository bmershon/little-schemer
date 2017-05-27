#lang racket

(require "../chapter-1-toys/atom.rkt")
(require "./even.rkt")
(require "../chapter-7-friends-and-relations/join.rkt")

; Removes all odd numbers from a list of nested lists.
(provide evens-only*)
(define evens-only*
  (lambda (l)
    (cond
      ((null? l) '())
      ((atom? (car l))
       (cond
         ((even? (car l))
          (cons (car l) (evens-only* (cdr l))))
         (else
          (evens-only* (cdr l)))))
       (else
        (cons (evens-only* (car l)) (evens-only* (cdr l)))))))

; Removes all odd numbers from a list of nested lists.
; The given function f is called with two arguments:
; (1) the resulting nested list of even numbers and
; (2) the list of atoms that is the odd numbers which
; have been removed.
(provide evens-only*&f)
(define evens-only*&f
  (lambda (l f)
    (cond
      ((null? l) (f '() '()))
      ((atom? (car l))
       (cond
         ((even? (car l))
            (evens-only*&f (cdr l)
                         (lambda (nested odds)
                           (f (cons (car l) nested) odds))))
         (else ; Not even.
            (evens-only*&f (cdr l)
                           (lambda (nested odds)
                             (f nested (cons (car l) odds)))))))
      (else
       (evens-only*&f (car l)
                      (lambda (first-nest first-odds)
                        (evens-only*&f (cdr l)
                                       (lambda (rest-nest rest-odds)
                                         (f (cons first-nest rest-nest)
                                            (join first-odds rest-odds))))))))))

(define build
  (lambda (l1 l2)
    (cons l1 (cons l2 '()))))