#lang lazy

(define Y
  (lambda (f)
    (f (Y f))))

(provide almost-factorial)
(define almost-factorial
  (lambda (f)
    (lambda (n)
      (if (= n 0)
          1
          (* n (f (- n 1)))))))

(define factorial (Y almost-factorial))