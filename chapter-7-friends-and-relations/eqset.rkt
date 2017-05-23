#lang racket

(require "../chapter-7-friends-and-relations/subset.rkt")

; Determines if set1 and set2 are equal.
(provide eqset?)
(define eqset?
  (lambda (set1 set2)
    (and (subset? set1 set2)
         (subset? set2 set1))))