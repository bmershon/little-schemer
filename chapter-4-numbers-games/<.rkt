#lang racket

; True if a is less than b and otherwise false.
(define <
  (lambda (a b)
    (cond
      ((zero? b) #f)
      ((zero? a) #t)
      (else (< (- a 1) (- b 1))))))