#lang sicp

;; ex 1.41

(define (inc n ) (+ 1 n))

(define (double f)
  (lambda (x) (f (f x))))

((double inc) 1)
