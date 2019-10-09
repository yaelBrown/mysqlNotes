================================= MySQL TABLES

-- TABLES DEFINED --

Table is like a spreadsheet: one record per row / one category of data about record per column 

Data type must be specified for a given column when creating a table.

-- CREATING TABLES --

CREATE TABLE table_name (
    column1_name data_type,
    column2_name data_type,
    ...
);

CREATE TABLE quotes (
    author_first_name VARCHAR(50),
    author_last_name  VARCHAR(100) NOT NULL,
    content TEXT NOT NULL
);


CREATE TABLE transactions (
  id BIGINT,
  date DATE,
  description VARCHAR(255),
  memo TEXT,
  amount DECIMAL(10, 2),
  current_balance DECIMAL(10, 2)
);

DROP TABLE transactions;




-- RUNNING SQL FILES --

To run from mac enviorment:

    mysql -u root -p -t < filename.sql

To run sql files from mysql client:

source filepath/filename.sql;






There are MANY datatypes in MySQL...








-- Common Numeric Types --

  *** See Curriculum ***
  INT: avoid using for phone numbers
  FLOAT / DOUBLE: mostly used for scientific calculations

  Dangers of float/double for money... https://www.sitepoint.com/community/t/mysql-why-not-double-or-float-for-storing-money/195731
  Short explanation of floating point numbers... https://blog.penjee.com/what-are-floating-point-errors-answered/
  Video explaining floating point numbers... https://www.youtube.com/watch?v=PZRI1IfStY0

  DECIMAL(lengthOfTotalNumber, precisionToRightOfDecimal) - used for exact values
  Preferred data type for currency

  DECIMAL(5,2)
  121.22


  DECIMAL(7, 3);
  9999.999

  DECIMAL(12, 4)

  CREATE TABLE users (
    user_age MEDIUMINT UNSIGNED
  );


  Use the qualifier UNSIGNED to double the max number of values for fields where a negative isn't possible
























-- Common String Types --

  *** See Curriculum ***

  CHAR(): characters up to 255 in length (typically used for constant values)
  VARCHAR(): very common data type (consider TEXT if you need to store lots of text)
  TEXT: use VARCHAR if you don't need the extra length

  VARCHAR(50)

  CHAR(255)


  CHAR(200)

















-- Common Date Types --

  *** See Curriculum ***

  DATE: YYYY-MM-DD
  TIME: HH:MM:SS
  DATETIME: YYYY-MM-DD HH:MM:SS




















-- Common Other Types -- 

  *** See Curriculum ***

  NULL: absense of any value, can specifiy whether a column can accept null values

  Use NOT NULL when it doesn't make sense for record to lack data for a given column (e.g. email for users)

  CREATE TABLE users (
    username VARCHAR(25),
    password VARCHAR(50),
    email VARCHAR(200),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    middle_name VARCHAR(50)
  );

  Allow nulls for columns where it makes sense for information to be missing when a record is created (e.g. delivery_date for pizza_orders)







-- PRIMARY KEYS --

Used to prevent duplicate rows

Specified with the following syntax:

CREATE TABLE something (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    other columns...
    PRIMARY KEY (id)
);





CREATE TABLE key_test ( 
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id),
  another INT
);



















Must specify the name of primary key column

-- DEFAULT VALUES --

DEFAULT VALUES: see curriculum
  - if column allows for null values, DEFAULT NULL is implied
  - use an explicit DEFAULT clause if it makes sense for a column to have a DEFAULT value
    - created_at TIMESTAMP CURRENT_TIMESTAMP

CREATE TABLE time_test (
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  b INT
);