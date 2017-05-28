#lang racket

(define eternity
  (lambda (x)
    (begin
      (display "You done goofed.\n")
      (eternity x))))