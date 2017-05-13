#lang racket

(provide multirember)
(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      ((eq? a (car lat))
        (multirember a (cdr lat)))
      (else
        (cons (car lat) (multirember a (cdr lat)))))))