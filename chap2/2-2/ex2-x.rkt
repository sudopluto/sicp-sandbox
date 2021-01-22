#lang sicp

;; 2-17: last-pair

(define (last-pair l)
  (cond
    ((null? (cdr l)) (car l))
    (else (last-pair (cdr l)))))

(last-pair (list 23 72 149 34))

;; 2-18: reverse

(define (reverse l)
  (reverse-impl l '()))
  

(define (reverse-impl s r)
  (cond
    ((null? s) r)
    (else (reverse-impl (cdr s) (cons (car s) r)))))

(reverse (list 1 4 9 16 25))

;; 2-20: same parity

(define (same-parity x . rest)
  (cons x (same-parity-impl x rest)))

(define (same-parity-impl x rest)
  (cond
    ((null? rest) '())
    (else (if (= (modulo x 2) (modulo (car rest) 2))
                  (cons (car rest) (same-parity-impl x (cdr rest)))
                  (same-parity-impl x (cdr rest))))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)

                  
    



