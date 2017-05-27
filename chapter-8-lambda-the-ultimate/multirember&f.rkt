#lang racket

; TODO (brooks): Annotate the multirember function.
; See http://www.michaelharrison.ws/weblog/?p=34 for an
; example of an unpacking of this function.

; Remove the members equal to 'a' from lat, producing
; two lists: the list of lat with occurrences of 'a' removed
; and the list of matches on 'a'. Then execute function f with
; arguments the two lists (lat with 'a removed and the matches on 'a').
(define multirember&f
  (lambda (a lat f)
    (cond
      ; Base case.
      ((null? lat) (f '() '()))
      ; The lambda function represents calling the
      ; last-defined lambda function with parameters
      ; that reflect having matched the next atom to
      ; process in the list of atoms.
      ((eq? (car lat) a)
        (multirember&f a (cdr lat)
            (lambda (newlat seen)
              (f newlat (cons (car lat) seen)))))
      ; The lambda function represents calling the
      ; last-defined lambda function with parameters
      ; that reflect having failed to match the next
      ; atom to process in the list of atoms.
      (else
        (multirember&f a (cdr lat)
                          (lambda (newlat seen)
                            (f (cons (car lat) newlat) seen)))))))



; Display the respective counts for the given lists.
; This function is used as an example of a top-level
; collector (or "summary") function that one can pass
; as the third parameter to multirember&f.
(define count
  (lambda (l1 l2)
    (cons (length l1) (cons (length l2) '()))))


(multirember&f 'a '(a b g a c) count)