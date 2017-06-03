#lang racket

(require "../chapter-8-lambda-the-ultimate/even.rkt")

; The algorithm specified in the Collatz Conjecture, also
; known as the "3x + 1 Problem":
; https://en.wikipedia.org/wiki/3x_%2B_1_problem
(define collatz
  (lambda (n count)
    (cond
      ((eq? 1 n) count)
      ((even? n) (collatz (/ n 2) (+ 1 count)))
      (else
        (collatz (+ (* 3 n) 1) (+ 1 count))))))


; The number of iterations required for the algorithm
; specified in the "3x+1 Problem", seeded with n,
; to produce the value 1.
(provide collatz-iterations)
(define collatz-iterations
  (lambda (n)
    (collatz n 0)))