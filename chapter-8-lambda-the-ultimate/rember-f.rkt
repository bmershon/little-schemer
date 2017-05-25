#lang racket

(require "../chapter-3-cons-the-magnificent/multirember.rkt")

; Generates a function which performs multirember
; with the given equality test function.
(provide multirember-generator)
(define multirember-generator
  (lambda (test?)
    (lambda (a l)
      (multirember-f a l test?))))