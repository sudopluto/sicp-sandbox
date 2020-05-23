#lang sicp

;; from book
(define (sum-recur term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum-recur term (next a) next b))))

(define (inc n) (+ n 1))
(define (cube n) (* n n n))

(define (sum-cubes a b)
  (sum-recur cube a inc b))

(sum-cubes 1 10)

;; ex 1-30

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ (term a) result))))
  (iter a 0))

(define (sum-cubes-iter a b)
  (sum-iter cube a inc b))

(sum-cubes-iter 1 10)
