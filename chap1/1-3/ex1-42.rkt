#lang sicp

(define (square n) (* n n))
(define (inc n) (+ 1 n))

(define (compose f g)
  (lambda (x) (f (g x))))

((compose square inc) 6)