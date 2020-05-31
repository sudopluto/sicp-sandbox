#lang sicp

;; 2.2

(define (make-point x y)
  (cons x y))


(define (x-point p)
  (car p))


(define (y-point p)
  (cdr p))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define (make-segment s e)
  (cons s e))

(define (start-segment s)
  (car s))

(define (end-segment s)
  (cdr s))

(define (midpoint-segment s)
  (let
      ((x1 (x-point (start-segment s)))
       (y1 (y-point (start-segment s)))
       (x2 (x-point (end-segment s)))
       (y2 (y-point (end-segment s))))
    (make-point
     (/ (+ x1 x2) 2)
     (/ (+ y1 y2) 2))))

(define p1 (make-point 0 0))
(define p2 (make-point 10 10))

(print-point (midpoint-segment (make-segment p1 p2)))
 
    

