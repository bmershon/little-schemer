#lang racket

; Whatever function is given to the top-level lambda,
; call that function with itself as its own argument.
(((lambda (mk-length)
   ; This line essentially allows the anonymous function to call itself by
   ; giving the function definition a means for referring to itself.
   (mk-length mk-length))
 ; This is the make-length function given to the top-level
 ; lambda. It returns a function that is capable of calling
 ; the function that is provided as an argument. It turns out
 ; that that function, in this case, will always be this very
 ; lambda function, which is capable of calling itself.
 (lambda (mk-length)
   (lambda (l)
     (cond
       ((null? l) 0)
       (else
        (add1 ((mk-length mk-length) (cdr l))))))))
 '(a b c d e f g h i j))