#lang racket

; A list containing all the elements from lat1 and lat2,
; possibly with duplicates. Used by union to form an intermediate
; list which is then be deduped.
(provide join)
(define join
  (lambda (lat1 lat2)
    (cond
      ((null? lat1) lat2)
      (else
        (join (cdr lat1) (cons (car lat1) lat2))))))