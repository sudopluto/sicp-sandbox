#lang sicp

;; fast-expt from book

(define (even? n)
  (= (remainder n 2) 0))

(define (square n)
  (* n n))

(define (fast-expt b n)
  (cond
    ((= n 0) 1)
    ((even? n) (square (fast-expt b (/ n 2))))
    (else (* b (fast-expt b (- n 1))))))

;; 1.16 iterative fast

(define (fast-expt-iter b n)
  (define (impl b n a)
    (cond
      ((= 0 n) 1)
      ((= 1 n) (* b a))
      ((even? n) (impl (square b) (/ n 2) a))
      (else (impl b (- n 1) (* a b)))))
  (impl b n 1))
 



;; tests
(fast-expt 5 2)
(fast-expt-iter 5 2)
(fast-expt 5 3)
(fast-expt-iter 5 3)
