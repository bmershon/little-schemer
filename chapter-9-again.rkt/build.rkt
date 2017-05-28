#lang racket

; Used as the function argument for evens-only*&f.
; Simply reports the two collected lists of the nested
; list of evens only and the flat list of atoms containing
; the odd entires that were removed from the nested S-expression.
(provide build)
(define build
  (lambda (l1 l2)
    (cons l1 (cons l2 '()))))