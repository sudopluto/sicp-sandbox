#lang sicp

(define (acc comb null term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (comb (term a) result))))
  (iter a null))

(define (product term a next b)
  (acc * 1 term a next b))

(define (inc n) (+ 1 n))
(define (identity n) n)

(define (fac n)
  (product identity 1 inc n))

(fac 5)
