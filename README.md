# csvTable
Imports a csv file into a TeXmacs table

The Scheme functions go in `.TeXmacs/progs/tables` (lowercase!). I have already placed them in a directory with the right name and nesting, the tree `/tables/` needs to be copied to the `prog` directory of TeXmacs.

Load the package csvTable.

The `csvTable` command takes two arguments, both of which are absolute or relative file paths of a csv file, and outputs its contents formatted into a table environment; one can choose the type of table, the default is wide-tabular.

The first argument is the path to the data file, the second is the path to a file which specifies the formatting of the table.
The formatting file is written in Scheme and defines two variables, `tableFormat` (for the format) and `tableUserSettings` (at the moment contains the table type only; it could be extended to contain other information).

Both variables need to be defined and please keep them defined with the same syntax as they are now, as the program expects them to be so (there is no input parsing). The two variables can be empty lists (in this case default settings will be applied).

(*For a while the package did not work with relative paths, then it started working again. The error was caused probably by the incorrect naming of the module in the first line of csvTable.scm*) 

There is a test file and its pdf output (`test_csvTables.tm` and `test_csvTables.pdf`); they read the files `dataSchemeTable.txt` (data) and `tableFormat.scm` (format) (the TeXmacs file expects them to be in the same directory as itself).

## Note

The output is directly formatted into the TeXmacs output, i.e. it does not get expanded into the TeXmacs file, as direct input in a Scheme session does. For this reason, all formatting of the table needs to be coded in Scheme.

## Security

In order to run this macro in TeXmacs it is necessary to set the security level to "Accept all scripts".

**One is then responsible for making sure that his TeXmacs documents are running only safe scripts!** 

Unsafe scripts could delete all the data on your hard drive.

Please see how to change TeXmacs security options in the TeXmacs manual (section 1, "User preferences", of the part "Configuring TeXmacs"). I am not writing it here so that a conscious effort on the part of the user is needed to change the setting.
