# csvTable
Imports a csv file into a TeXmacs document as a table.

The `insert-csvTable` function, that imports the file as a `wide-tabular` table, is applied through a keyboard shortcut. It takes one argument, the file name of the `.csv` data file, and inserts the data into the current buffer.



## Instructions

To be able to use the function, please insert the keyboard shortcut into your `my-init-TeXmacs` file (see example) and place the `csvTable.csm` file in the `/prog/tables/simple/csvTable` directory of the `.TeXmacs` TeXMacs user configuration directory.

If  `/prog/tables/simple/csvTable`  isn't the directory whether you would like to put  the `csvTable.csm` file, then please  modify accordingly the `use-modules` form in the `my-init-texmacs.scm` configuration file. 

The function expects a file with a simple structure, where every row has the same number of entries, separated by commas, and does not do any error-checking.

The function executes if the cursor is within a `document` or a `big-table` tag; otherwise it displays a widget with a warning. Please close the widget before returning to editing your TeXmacs document, as the widget won't be closed automatically.
