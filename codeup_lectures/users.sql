
/*-- MySQL USERS --*/

-- # Return the name of a current logged in user...
  SELECT current_user;
 
-- # List all users...
  SELECT user, host FROM mysql.user;

-- # Create a new user...
  CREATE USER 'someName'@'someHostName' IDENTIFIED BY 'somePassword';

-- # (multiple hostnames for a single user require seperate CREATE USER commands)

-- # Create a new user with permissions to connect from anywhere (security risk)...
  CREATE USER 'john'@'%' IDENTIFIED BY 'secretWord';

-- # We will stick to using 'localhost' for the rest of Codeup.

-- User Permissions --

-- # Give a user complete access...
  GRANT ALL ON *.* TO 'billy'@'localhost';
  -- # (first * is the database and second * is the table)   

-- # Give a user access to a single action...
  GRANT someSqlActionGoesHere ON someDatabaseName.someDatabaseTable TO 'billy'@'localhost';

-- # Give a user access to multiple actions to any table of a database...
  GRANT someSqlActionGoesHere, anotherSqlActionGoesHere, etc. ON someDatabaseName.* TO 'billy'@'localhost';

-- # Give a user all access and the ability to set other user permissions...
  GRANT ALL ON *.* TO 'billy'@'localhost' WITH GRANT OPTION;

-- # -- DROPPING USERS --

-- # Dropping a user from the MySQL system (CANNOT BE UNDONE so use with caution)...
  DROP USER 'billy'@'localhost';
