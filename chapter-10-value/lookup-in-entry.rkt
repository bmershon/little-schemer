#lang racket

(provide lookup-in-entry)
(define lookup-in-entry
  (lambda (name entry notfound)
    (find (car entry) (car (cdr entry)) name notfound)))

(define find
  (lambda (keys values name notfound)
    (cond
      ((null? keys) (notfound name))
      ((eq? (car keys) name)
       (car values))
      (else
       (find (cdr keys) (cdr values) name notfound)))))