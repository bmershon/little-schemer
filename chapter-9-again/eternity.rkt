#lang racket

(provide eternity)
(define eternity
  (lambda (x)
    (begin
      (display "You done goofed.\n")
      (eternity x))))