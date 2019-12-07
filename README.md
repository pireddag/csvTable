# csvTable
Imports a csv file into a TeXmacs table

The Scheme functions go in `.TeXmacs/progs/tables` (lowercase!). I have already placed them in a directory with the right name and nesting, the tree `/tables/` needs to be copied to the `prog` directory of TeXmacs.

Load the package csvTable.

The `csvTable` command takes as its single argument the absolute file path of a csv file and outputs its contens formatted into a wide Tabular environment.

There is a test file and its pdf output (test_csvTables.tm and test_csvTables.pdf).

## Security

In order to run this macro in TeXmacs it is necessary to set the security level to "Accept all scripts".

**One is then responsible for making sure that his TeXmacs documents are running only safe scripts!** 

Unsafe scripts could delete all the data on your hard drive.

Please see how to change TeXmacs security options in the TeXmacs manual (section 1, "User preferences", of the part "Configuring TeXmacs"). I am not writing it here so that a conscious effort on the part of the user is needed to change the setting.
