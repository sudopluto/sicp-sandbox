#lang sicp

;; ex 1.43

(define (square n) (* n n))

(define (repeated f n)
  (define (iter a res)
    (if (>= a n)
        res
        (iter (+ 1 a) (lambda (x) (f (res x))))))
  (iter 1 f))

((repeated square 2) 5)
