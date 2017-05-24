#lang racket

(require "../chapter-3-cons-the-magnificent/firsts.rkt")
(require "set.rkt")

; Determines whether the given relation is a function,
; where a relation is a function whose first elements
; of every pair form a set.
(provide fun?)
(define fun?
  (lambda (rel)
    (set? (firsts rel))))
  