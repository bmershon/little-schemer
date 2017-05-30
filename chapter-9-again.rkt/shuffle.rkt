#lang racket

(require "../chapter-1-toys/atom.rkt")
(require "./build.rkt")

(define first
  (lambda (p)
    (car p)))

(define second
  (lambda (p)
    (car (cdr p))))

(define reversepair
  (lambda (p)
    (build (second p) (first p))))

(provide shuffle)
(define shuffle
  ; pora: pair or atom.
  (lambda (pora)
    (cond
      ((atom? pora) pora)
      ((pair? (first pora))
        (shuffle (reversepair pora)))
      (else
       (build (first pora)
              (shuffle (second pora)))))))