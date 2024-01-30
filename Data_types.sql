
-- Char has fixed length if column has length of char be 2 then it will store char of size 2 and if we pass 1 char then it expand it to 2
-- Char adds up whitespaces which cannot be visualize called as right padding
-- Char is useful when there are fixed values in a columns and all white spaces being used
-- Varchar has fixed length but it varies according to input and it will not expand it as Char

-- For Double syntax is DECIMAL(5,2) 5 indicates total number of digits and 2 indicates digits after decimal. Largest number we can store is 999.99

CREATE DATABASE prod;
USE prod;
CREATE TABLE products ( price double(5,2));
SELECT * FROM products;
INSERT INTO products (price) values (469.988); -- round up 
SHOW WARNINGS;
INSERT INTO products (price) values (3232.2); -- errror it should two digits after decimal
-- before decimal if num added beyond the range the error 
-- for after decimal it is truncated

-- Double and Float has difference 
-- If preision is not the priority but speed is then we can use DOUBLE datatype
-- Float is less precise and Double is more precise 
-- 4bytes and 8bytes storage by float and double respectively