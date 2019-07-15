#!/usr/local/bin/sbcl --script
;;; ANSI Common Lisp Implementation of Sieve of Eratosthenes <<Prime>> 
;;; EMACS(25.3)/TAB(4)/(CLISP&SBCL)
;;; 07.2019

(defun sieve-eratosthenes(n)
  ;; Using LISP functions(member, push, reverse) ;;
  ;; Not efficient for large numbers ;;
  (setf mmoize '() result '())
  (do ((i 2 (+ i 1)))
	  ((> i n) 'done)
	  (do ((j 1 (+ j 1)))
		  ((> j n) 'done)
		  (setf mltpl (* i j))
		  (setf not-memz (not (member mltpl mmoize)))
		  (if (and (> (+ n 1) mltpl) not-memz (not (eql mltpl i)))
			  (push mltpl mmoize)
		  )
	  )
	  (if (not (member i mmoize))
		  (push i result)
      )
  )
  (write (reverse result))
) 
(sieve-eratosthenes 100)
