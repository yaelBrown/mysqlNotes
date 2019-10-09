# ================================= MySQL DATABASES

# Multiple databases may exist on a server

# -- Creating a Database --

  CREATE DATABASE stuff_db;

    # or

  CREATE DATABASE IF NOT EXISTS stuff_db; # to avoid an error if the database exists 

# -- Listing Databases --

  SHOW DATABASES;


# -- Using a Database --

  USE stuff_db;

  # To refer to a table in another database, use dot syntax...

    SELECT * FROM employees.departments;



# -- Get Current Database --

  SELECT database();



# -- View Command Used to Create a Database --

  SHOW CREATE DATABASE stuff_db;


# -- SCHEMA vs. DATABASE --

  # In MySQL, they mean the same thing


# -- Delete a Database --

  DROP DATABASE stuff_db;

    # or

  DROP DATABASE IF EXISTS stuff_db; # to avoid an error if no table exists by that name to drop

/*
-- Conventions --

  Significant part of developing a web app is designing the database.

  Use lower, snake_cased words for multi_word db, table, and column names

  Most small-scale web applications will use a single database and user; more detail in the next unit.

  Avoid using reserved words for column names or database names.

  You can use space-separated names by encasing them in back tics but AVOID this (use underscores).
  
*/

