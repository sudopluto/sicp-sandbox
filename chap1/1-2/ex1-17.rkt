#lang sicp

;; ex 1.17

(define (double n)
  (* 2 n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-mult a b)
  (cond
    ((or (= 0 a) (= 0 b)) 0)
    ((= 1 b) a)
    ((even? b) (fast-mult (double a) (halve b)))
    (else (+ a (fast-mult (double a) (halve (- b 1))))))) 

;; tests
(* 3 4)
(fast-mult 3 4)
(* 5 5)
(fast-mult 5 5)