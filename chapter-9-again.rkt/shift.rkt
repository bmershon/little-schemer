#lang racket

(require "./build.rkt")

; At first glance, a seemingly useless (and silly)
; function which "takes a pair whose first
; component is a pair and builds a pair by
; shifting the second part of the first
; component into the second component."
(provide shift)
(define shift
  (lambda (pair)
    (build (first (first pair))
      (build (second (first pair))
        (second pair)))))