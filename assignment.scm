#|
Andrew Ang
Nov. 20th 2017
Professor Arias
CSC 3310: Concepts of Prog. Languages
Scheme HW: Roll Dice, Convert dec to base x, Prime Numbers
|#

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
	(if (or (< base 2) (> base 9)) ;;; make sure base is between 2-9
		(begin
			(display "Enter a valid base number from 2-9")
			(quit)
		)
	)
	(if (< number 0) ;;; make sure number is positive
		(begin
			(display "Please enter a positive number")
			(quit)
		)
	)
	(let 
		((divided (quotient number base)))
	(if (not(= number 0)) ;;; condition
		(begin 
			(convert divided base)
			(display (modulo number base))
		);;; end of begin
	);;; end of if 
	) ;;; end of let
) ;;; end of function

;;; function to print primes up to that number
(define (list-primes num)
	(if(= num 2) ;;; base case
		(begin
			(display num)
			(newline)
		)		;;; end of base case
	(begin ;;; beginning of else
		(if (or (= num 3) (= num 5) (= num 7)
				(and	(not (= (modulo num 2) 0))
					    (not (= (modulo num 3) 0))
						(not (= (modulo num 5) 0))
						(not (= (modulo num 7) 0))
				) ;;; end of and
			) ;;; end of or 
				(begin ;;; beginning of statement
					(list-primes (- num 1))
					(display num)
					(newline)
				
				) ;;; end of statement
				(list-primes (- num 1)) ;;; else statement
		) ;;; end of nested if
	) ;;; end of else
	) ;;; end of base case if
) ;;; end of function