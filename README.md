# bookmark-manager

# User Stories

`
As a user
So I can view all of my bookmarks
I want to be able to view a list of bookmarks on a page

As a user
So I can easily revisit websites I like
I want to be able to add a bookmark to the bookmark manager 
`


# Using the databases

* connect to `psql`
* create the database using the command `CREATE DATABASE bookmark_manager;`
* connect to the database using `\c bookmark_manager`
* run the queries saved in `01_create_bookmarks_table.sql`

# Using the test databases

In rspec and feature tests, the program uses a test database to connect to, truncate and populate with test data. To set up the test database before running the tests, run these commands:

* connect to `psql`
* create a new test database using `CREATE DATABASE bookmark_manager_test;`
* run the code from `db/test_databases/create_test_databases.sql` to create a new table within the test database
* the table will be truncated and populated during the test process
