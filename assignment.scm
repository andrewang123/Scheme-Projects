(define (list-primes num)
	(cond ((= num 2) (display num))
		  ((= num 3) (display num))
		  ((= num 5) (display num))
		  ((= num 7) (display num))
		  (else 
		  	(begin 
		  		(cond ((= (modulo num 2) 0) (display "hey"))
		  		  	((= (modulo num 3) 0) (display "hey"))
		  		  	((= (modulo num 5) 0) (display "hey"))
		  		  	((= (modulo num 7) 0) (display "hey"))
		  		(else (begin 
		  			(display num)
		  			(list-primes (- num 1))

		  			)
		  		))))))
;;;(define (convert number base))

;;; Creates a game with two computers until they guess the same num
(define (roll-till-you-win)
	(let 
		((die-roll (1+ (random 6)))
	 	(compguess (1+ (random 6))))
	(display "Bet: ") (display compguess)
	(display " ")
	(display "Result: ") (display die-roll)
	(newline)
			
	(if (= die-roll compguess) ;;; condition
		(display "You won!") ;;; statement for if
		(roll-till-you-win) ;;; Else
	) ;;; end of if	
	);;; end of let

) ;;; end of function

;;; Converts a number to base number
(define (convert number base)
	(let 
		((divided (quotient number base)))
	(if(= number 0) ;;; condition
		(display "") ;; statements
		(begin ;;; else statement
			(convert divided base)
			(display (modulo number base))
			);;; end of begin
	);;; end of if 
	) ;;; end of let
) ;;; end of function
		  	


		  

;;; now check if those mod