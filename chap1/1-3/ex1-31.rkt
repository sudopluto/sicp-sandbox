#lang sicp

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (identity n) n)
(define (inc n) (+ 1 n))

(define (fac n)
  (product identity 2 inc n))

(fac 5)
  