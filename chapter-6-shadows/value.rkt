#lang racket

(require "../chapter-1-toys/atom.rkt")

; Evaluates an infix notation arithmetic expression
; e.g., (value '(2 * ( 10 + (3 / 5)))) evaluates to
; 21 and 1/5. Essentually, this function feeds the arguments
; of an infix notaiton expression into the corresponding
; built-in prefix arithmetic procedures in Racket (+, -, *, /).
(provide value)
(define value
  (lambda (nexp)
    (cond
      ((atom? nexp) nexp)
      ((eq? (operator nexp) '+)
       (+ (value (arg1 nexp)) (value (arg2 nexp))))
       ((eq? (operator nexp) '-)
       (- (value (arg1 nexp)) (value (arg2 nexp))))
       ((eq? (operator nexp) '*)
       (* (value (arg1 nexp)) (value (arg2 nexp))))
       ((eq? (operator nexp) '/)
       (/ (value (arg1 nexp)) (value (arg2 nexp)))))))

(define operator
  (lambda (aexp)
    (car (cdr aexp))))

(define arg1
  (lambda (aexp)
    (car aexp)))

(define arg2
  (lambda (aexp)
    (car (cdr (cdr aexp)))))