#lang racket

; From Richard P. Gabriel's "The Why of Y":
; https://www.dreamsongs.com/Files/WhyOfY.pdf
(let ((g (lambda (h n)
 (if (< n 2) 1 (* n (h h (- n 1)))))))
 (g g 10))

; An example which uses an accumulator and is therefore
; an iterative computation of the factorial.
(letrec ((f (lambda (n m)
 (if (< n 2) m (f (- n 1) (* m n))))))
 (f 10 1))

; The previous example has been given a treatment
; of currying.
(letrec ((f (lambda (n)
 (lambda (m)
 ; The recursive call (1) computes a function
 ; that would properly compute factorial(n - 1)
 ; and (2) passes an accumulated value to that
 ; computed function.
 (if (< n 2) m ((f (- n 1)) (* m n)))))))
 ((f 10) 1))

; This example goes back to a non accumulator-based
; implementation, but uses currying to ensure that the
; canonical recursive implementation of factorial
; may be used. There is a catch: the management of
; the appropriate recursive function to call is now
; mixed in with the factorial computation. That's not
; pretty!
(let ((g (lambda (h)
 (lambda (n)
 ; (h h) produces the apprpriate self-callable function.
 (if (< n 2) 1 (* n ((h h) (- n 1))))))))
 ((g g) 10))