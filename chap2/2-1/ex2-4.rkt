#lang sicp

;; 2.4

(define (cons x y)
  (lambda (f) (f x y)))

(define (car c)
  (c (lambda (x y) x)))

(define (cdr c)
  (c (lambda (x y) y)))

(define pair (cons 3 4))
(car pair)
(cdr pair)
 
    

