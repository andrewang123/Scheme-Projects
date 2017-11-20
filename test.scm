;;;; Fibonacci Numbers

(define (fib n)
  ;; Calculate the nth Fibonacci number recursively
  (if (< n 2)
      n                                 ; base case
      (+ (fib (- n 1)) (fib (- n 2)))))