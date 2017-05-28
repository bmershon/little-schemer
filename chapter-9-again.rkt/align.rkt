#lang racket

(require "../chapter-1-toys/atom.rkt")
(require "./build.rkt")
(require "./shift.rkt")

(define first
  (lambda (p)
    (car p)))

(define second
  (lambda (p)
    (car (cdr p))))

(provide align)
(define align
  ; pora: pair or atom.
  (lambda (pora)
    (cond
      ((atom? pora) pora)
      ((pair? (first pora))
        (align (shift pora)))
      (else
       (build (first pora)
              (align (second pora)))))))
    