<TeXmacs|2.1.1>

<style|<tuple|tmdoc|pagella-font|SIUnits_v02|old-lengths>>

<\body>
  <tmdoc-title|The <name|csv-table> package>

  The csv-table plugin provide a command to import a .csv file into a TeXmacs
  document as a table. The command can be issued through either a menu item,
  under <menu|Insert|Table>, or a keyboard shortcut.\ 

  If you issue the command by choosing the <menu|Insert table from csv
  file..>. menu item or by typing <verbatim|t a b l e tab> (that is, type
  \Ptable\Q followed by a tab), TeXmacs will open a file selection window and
  will upon file selection insert the table contained in the selected file at
  the cursor position.

  The menu item and keyboard shortcut execute the import function only if the
  cursor is in plain text or in a big-table <em|environment> (but not inside
  a table!), otherwise issue a warning. Please close the warning window
  before returning to editing your document, as TeXmacs won't do it on its
  own, and will open a <em|new> warning window every time the keyboard
  shortcut is executed.
</body>

<\initial>
  <\collection>
    <associate|math-font|math-pagella>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|preamble|false>
    <associate|prog-scripts|scheme>
  </collection>
</initial>