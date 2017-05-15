#lang racket

(define nums
  (lambda (lat)
   (cond
    ((null? lat) '())
    ((number? (car lat)) (cons (car lat) (nums (cdr lat))))
    (else (nums (cdr lat))))))