#lang sicp

;; abs: returns the abs of a given number
;; num -> pos num
(define (abs x)
  (cond
    ((> x 0) x)
    ((= x 0) 0)
    ((< x 0) (- x))))

;; sq: returns the square of a number
;; num -> num
(define (sq x)
  (* x x))

;; good enough: returns true if guess and x are with bounds
;; num num -> bool
(define (good-enough? guess x)
  (< (abs (- (sq guess) x)) 0.000001))

;; avg: returns the average of two numbers
;; num num -> num
(define (avg x y)
  (/ (+ x y) 2))

;; improve guess: averages guess and x / guess to get a better guess
;; num num -> num
(define (improve-guess guess x)
  (avg guess (/ x guess)))

;; sq root impl: computes the sqroot of x recursively using guess
;; num num -> num
(define (sqrt-impl guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-impl (improve-guess guess x) x)))

;; sq root: takes number and returns the square root of it
;; num -> num
(define (sqrt x)
  (sqrt-impl 1.0 x))

 