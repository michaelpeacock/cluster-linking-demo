-- Create the test database
CREATE DATABASE testDB;
GO
USE testDB;
EXEC sys.sp_cdc_enable_db;

-- Create some customers ...
CREATE TABLE promotions(
  id INTEGER IDENTITY(1001,1) NOT NULL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  new_title VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO promotions(first_name,last_name,new_title) VALUES ('Jim','Halpert','Sales Guy');
GO
