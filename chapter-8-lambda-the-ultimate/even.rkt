#lang racket

(provide even?)
(define even?
  (lambda (n)
   (zero? (modulo n 2))))