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

(provide multirember-f)
(define multirember-f
  (lambda (a lat test?)
    (cond
      ((null? lat) '())
      ((test? a (car lat))
        (multirember a (cdr lat)))
      (else
        (cons (car lat) (multirember a (cdr lat)))))))