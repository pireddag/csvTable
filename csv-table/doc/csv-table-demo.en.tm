<TeXmacs|2.1.1>

<style|<tuple|tmdoc|csvTable>>

<\body>
  <doc-data|<doc-title|The csv-table plugin>>

  <abstract-data|<\abstract>
    The csv-table plugin provide a command to import a .csv file into a
    TeXmacs document as a table. The command can be issued through either a
    menu item, under <menu|Insert|Table>, or a keyboard shortcut.\ 

    If you issue the command by choosing the <menu|Insert table from csv
    file..>. menu item or by typing <verbatim|t a b l e tab> (that is, type
    \Ptable\Q followed by a tab), TeXmacs will open a file selection window
    and will upon file selection insert the table contained in the selected
    file at the cursor position.

    The menu item and keyboard shortcut execute the import function only if
    the cursor is in plain text or in a big-table <em|environment> (but not
    inside a table!), otherwise issue a warning. Please close the warning
    window before returning to editing your document, as TeXmacs won't do it
    on its own, and will open a <em|new> warning window every time the
    keyboard shortcut is executed.
  </abstract>>

  Table inserted in plain text by typing <key|t a b l e tab> and selecting
  the file <shell|data-scheme-table.txt> contained in the plugin
  documentation directory:

  <wide-tabular|<tformat|<table|<row|<cell|a >|<cell| b>|<cell|
  c>>|<row|<cell|d>|<cell| e>|<cell| f>>|<row|<cell|g>|<cell| h>|<cell|
  i>>>>>

  \;

  <with|color|blue|<hrule>>

  <\big-table|<wide-tabular|<tformat|<table|<row|<cell|a >|<cell| b>|<cell|
  c>>|<row|<cell|d>|<cell| e>|<cell| f>>|<row|<cell|g>|<cell| h>|<cell|
  i>>>>>>
    Same table inserted in a <markup|big-table> environment. I have deleted
    the table that automatically appears when inserting a <markup|big-table>
    environment through the menu command <menu|Insert|Table|Big table> before
    typing the \ <key|t a b l e tab> keyboard shortcut
  </big-table>

  <with|color|blue|<hrule>>

  <math|a*b=c> <math|<with|color|blue|\<Longleftarrow\>>> if one types
  \ <key|t a b l e tab> inside a math environment (e.g. the one on the left
  of the arrow) the plugin will issue a warning and will not offer the file
  selection window.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|page-screen-margin|false>
    <associate|preamble|false>
  </collection>
</initial>