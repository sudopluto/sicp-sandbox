#lang sicp

;; 2.1

(define (abs n)
  (if (< n 0)
      (- n)
      n))

(define (make-rat n d)
  (let
      ((test (* n d)))
    (if (< test 0)
        (cons (- n) (abs d))
        (cons (abs n) (abs d)))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


(print-rat (make-rat -1 -2))