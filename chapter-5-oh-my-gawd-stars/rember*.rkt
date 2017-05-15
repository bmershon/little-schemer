#lang racket

(require "../chapter-1-toys/atom.rkt")

; Removes all occurrences of the atom a from list l
; of S-expressions, where atom a may appear in l at any
; level of nesting.
(define rember*
  (lambda (a l)
   (cond
    ((null? l) '())
    ((atom? (car l))
        (cond
          ((eq? (car l) a) (rember* a (cdr l)))
          (else
              (cons (car l) (rember* a (cdr l))))))
    (else
      ; We recurse down the first element of the list as well as
      ; down the rest of the list.
      (cons (rember* a (car l)) (rember* a (cdr l)))))))