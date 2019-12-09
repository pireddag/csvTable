(texmacs-module (tables csvTable))

;; ;; string-split exists in Guile but not in Mit Scheme
;; ;; The following function is necessary for testing with Mit Scheme
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

(define (addLineRec dataPort lines)
  (let ((lineIn (read-line dataPort)))
	(if (eof-object? lineIn)
	    lines
	    (begin
	      ; (bkpt lines "test") ; breakpoint: http://www.cs.toronto.edu/~sheila/324/w07/assns/A3/debug.pdf
	      (addLineRec dataPort (cons lineIn lines))
	      ))))

(define (readTable dataPort)
  (reverse (addLineRec dataPort '())))

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


;;; table composition

(define tableDefaults '((tableType . wide-tabular)))

;; appending associations makes the first match to assoc to be used
;; (define (composeTableSettings tableUserSettings tableDefaults)
;;   (append tableUserSettings tableDefaults))

;; a function to extract values from associations
(define (assocValue type aList)
  (cdr (assoc type aList)))

(define (composeTable TeXmacsTable tableUserSettings tableDefaults)
  (let* ((tabSettings  (append tableUserSettings tableDefaults)) ; appending associations makes the first match to assoc to be used
    	 (tabType (assocValue 'tableType tabSettings)))
    `(,tabType ,(append '(tformat) tableFormat `(,TeXmacsTable)))))
;; is it possible to write this using only the quasiquote and unquote operators?
;; tableFormat is a list, and I want its elements

;;  adapted example of https://ds26gte.github.io/tyscheme/index-Z-H-9.html
(tm-define (csvTable fileData fileFormat)
	   (set! fileData (tree->stree fileData))
	   (set! fileFormat (tree->stree fileFormat))
(call-with-input-file  fileData
  (lambda (dataPort)
    (let* ((TeXmacsTable  (file->TeXmacsTable dataPort)))
      (begin
	;;(display fileFormat)
	(load fileFormat)
	;;(display  `(wide-tabular ,(append '(tformat) tableFormat `(,TeXmacsTable))))
	(stree->tree (composeTable TeXmacsTable tableUserSettings tableDefaults)))))))





