#!/usr/local/bin/sbcl --script
;;; ANSI Common Lisp Implementation of Insertion Sort <<CLRS>>
;;; EMACS(25.3)/TAB(4)/(CLISP&SBCL)
;;; 03.2019

(defun insertion-sort (mlist)
  "WC: Complexity O(n2)"
  (do ((i 1 (+ i 1)))
	  ((> i (- (length mlist) 1)) 'done)
	  (setf k (nth i mlist))
	  (setf j (- i 1))
	  (do ((m j (- m 1)))
		  ((< m 0) 'done)
		  (if (> (nth m mlist) k)
			  (setf (nth (+ j 1) mlist) (nth j mlist) j (- j 1))    
          )
      )
	  (setf (nth (+ j 1) mlist) k)
  )
  (write mlist)
)
(insertion-sort '(9 8 7 6 5 4 3 2 1 0))
