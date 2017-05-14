#lang racket

; Number of occurences of atom a in list of atoms lat.
(define occur
  (lambda (a lat)
    (cond 
      ((null? lat) 0)
      ((eq? (car lat) a) (+ 1 (occur a (cdr lat))))
      (else (occur a (cdr lat))))))