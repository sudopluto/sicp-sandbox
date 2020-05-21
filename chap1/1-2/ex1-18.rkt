#lang sicp

;; ex 1.18

(define (double n)
  (* 2 n))

(define (halve n)
  (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-mult a b)
  (define (impl a b acc)
    (cond
      ((= 0 b) acc)
      ((even? b) (impl (double a) (halve b) acc))
      (else (impl a (- b 1) (+ acc a)))))
  (impl a b 0))

;; tests
(* 3 4)
(fast-mult 3 4)
(* 5 5)
(fast-mult 5 5)