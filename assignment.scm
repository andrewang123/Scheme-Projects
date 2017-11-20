

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

(define (list-primes num)
	(display num)
	(if(= num 2 ) 
		(display num)
		
		(begin
			(list-primes (- num 1))
			(display num)
			(newline)
		);;; end of begin
		) ;;; end of if



);;; end of function