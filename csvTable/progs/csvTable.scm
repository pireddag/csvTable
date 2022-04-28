(texmacs-module (csvTable))

;; ;; string-split exists in Guile but not in Mit Scheme
;; ;; I assume I will be able to write the code for Guile without the following function
;; ;; https://codereview.stackexchange.com/questions/75172/split-string-for-r7rs
;; ;; https://codereview.stackexchange.com/a/75178 (solution of Chris Jester-Young)
;; (define (string-split str delim)
;;   (define in (open-input-string str))
;;   (let recur ((out (open-output-string)))
;;     (define c (read-char in))
;;     (cond ((eof-object? c)
;;            (list (get-output-string out)))
;;           ((char=? c delim)
;;            (cons (get-output-string out)
;;                  (recur (open-output-string))))
;;           (else
;;            (write-char c out)
;;            (recur out)))))

(define (addLineRecursive dataPort lines)
  (let ((lineIn (read-line dataPort)))
	(if (eof-object? lineIn)
	    lines
	    (begin
	      ; (bkpt lines "test") ; breakpoint: http://www.cs.toronto.edu/~sheila/324/w07/assns/A3/debug.pdf
	      (addLineRecursive dataPort (cons lineIn lines))
	      ))))

(define (readTable dataPort)
  (reverse (addLineRecursive dataPort '())))

(define (row->Cells row)
  (string-split row #\,))

(define (table->Scheme table)
  (map row->Cells table))

(define (cell->TeXmacs cellContent)
  `(cell ,cellContent))

(define (row->TeXmacs rowContent)
 (append `(row) (map cell->TeXmacs rowContent)))

(define (table->TeXmacs tableContent)
  (append `(table) (map row->TeXmacs tableContent)))

(define (file->TeXmacsTable dataPort)
   (table->TeXmacs (table->Scheme (readTable dataPort))))
  
;;  adapted example of https://ds26gte.github.io/tyscheme/index-Z-H-9.html

(tm-define (csvTable filename)
	   (set! filename (tree->stree filename))
(call-with-input-file  filename
  (lambda (dataPort)
    (let* ((table  (file->TeXmacsTable dataPort)))
      (stree->tree `(wide-tabular ,table))))))


(tm-define (insert-csvTable filename)
  (set! filename (url->system filename))
	   (insert (call-with-input-file  filename
		     (lambda (dataPort)
		       (let* ((table  (file->TeXmacsTable dataPort)))
			 (stree->tree `(wide-tabular ,table)))))))
