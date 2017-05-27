#lang racket

; Starting with the first list, produces a list that
; interleaves elements from l1 and l2.
(provide convolve-l)
(define convolve-l
  (lambda (l1 l2)
    (cond
      ((null? l1) l2)
      (else
        (cons (car l1) (convolve-r (cdr l1) l2))))))


; Starting with the second list, produces a list that
; interleaves elements from l1 and l2.
(provide convolve-r)
(define convolve-r
  (lambda (l1 l2)
    (cond
      ((null? l2) l1)
      (else
        (cons (car l2) (convolve-l l1 (cdr l2)))))))