;; row of first cell, row of last cell
;; column of first cell, column of last cell
;; if last is higher than first, format is not applied
;; negative numbers count from the last element

(define tableFormat
  '((cwith "1" "1" "1" "-1" "cell-bsep" "3sep")
    (cwith "1" "1" "1" "-1" "cell-tsep" "3sep")
    (cwith "1" "1" "1" "-1" "cell-tborder" "1.5ln")
    (cwith "1" "1" "1" "-1" "cell-bborder" "1.5ln")
    (cwith "1" "1" "1" "1" "cell-background" "pastel red")
    (cwith "3" "3" "1" "-1" "cell-background" "#afa")
    (cwith "2" "-1" "1" "-1" "cell-halign" "c")))

;; (define tableType 'wide-tabular)

(define tableUserSettings '((tableType . wide-tabular )))

;; Example of TeXmacs table

;; (wide-tabular
;;  (tformat
;;   (cwith "1" "1" "1" "-1" "cell-tborder" "0ln")
;;   (cwith "1" "1" "1" "-1" "cell-bborder" "1ln")
;;   (cwith "1" "1" "3" "3" "cell-rborder" "0ln")
;;   (cwith "1" "1" "1" "1" "cell-tborder" "0ln")
;;   (cwith "1" "1" "-1" "1" "cell-rborder" "1ln")
;;   (cwith "1" "3" "-1" "3" "cell-lborder" "1ln")
;;   (cwith "1" "1" "1" "1" "cell-background" "pastel red")
;;   (cwith "3" "3" "1" "-1" "cell-background" "#afa")
;;   (cwith "2" "3" "1" "-1" "cell-halign" "c")
;;   (cwith "1" "1" "1" "-1" "cell-vpart" "2ln")
;;   (table
;;    (row (cell (document "a")) (cell (document "b")) (cell (document "c")))
;;    (row (cell (document "d")) (cell (document "e")) (cell (document "f")))
;;    (row (cell (document "g")) (cell (document "h")) (cell (document "i"))))))
