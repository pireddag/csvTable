

(use-modules (tables simple csvTable)) 
                                       

(tm-widget (table-message-widget)
  (hlist
    (text "Please insert table in plain text")
    >>>
    (explicit-buttons ("or big-table environment" (display "message from insert table widget")))))

(kbd-map
  ("t a b l e tab"
   (if (or (tree-is? (cursor-tree) 'document)
	   (tree-is? (cursor-tree) 'big-table)
	   (tree-is? (tree-outer (cursor-tree)) 'document)
	   (tree-is? (tree-outer (cursor-tree)) 'big-table))
       (choose-file insert-csvTable "choose table file" "")
       (top-window table-message-widget "Insert table message"))))
