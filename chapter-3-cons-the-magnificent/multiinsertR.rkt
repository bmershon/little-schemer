#lang racket

(provide multiinsertR)
(define multiinsertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) old)
        (cons old (cons new (multiinsertR new old (cdr lat)))))
      (else
        (cons (car lat) (multiinsertR new old (cdr lat)))))))