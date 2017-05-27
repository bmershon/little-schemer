#lang racket

(require "../chapter-7-friends-and-relations/makeset.rkt")
(require "./join.rkt")

; The union of set1 and set2.
(provide union)
(define union
  (lambda (set1 set2)
    (makeset (join set1 set2))))
