#lang racket

(require "../chapter-7-friends-and-relations/makeset.rkt")

; A list containing all the elements from lat1 and lat2,
; possibly with duplicates. Used by union to form an intermediate
; list which is then be deduped.
(define join
  (lambda (lat1 lat2)
    (cond
      ((null? lat1) lat2)
      (else
        (join (cdr lat1) (cons (car lat1) lat2))))))

; The union of set1 and set2.
(provide union)
(define union
  (lambda (set1 set2)
    (makeset (join set1 set2))))
