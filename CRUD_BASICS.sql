CREATE DATABASE cats_breed;
USE cats_breed;

CREATE TABLE cats
(
	cat_id INT auto_increment,
    name VARCHAR(100),
    breed varchar(100),
    age INT,
    primary key (cat_id)
);

DESC cats;

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

SELECT * FROM cats;
-- * returns all the columns

SELECT name FROM cats;

SELECT age FROM cats;

SELECT name,age FROM cats;

SELECT name,breed FROM cats;

SELECT * FROM cats WHERE age=4;

SELECT name,age FROM cats WHERE age=4;

SELECT * FROM cats WHERE name = 'Egg';
SELECT * FROM cats WHERE name = 'egg'; 
-- case-insensitive

-- EXERCISE --
SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name,age FROM cats WHERE breed = 'Tabby';
SELECT cat_id,age FROM cats WHERE cat_id = age;

-- ------------------------------------
-- ALIASES --
SELECT cat_id AS id, name FROM cats;
DESC cats; 
-- it does not affect original table;
SELECT name AS kittyName FROM cats;

-- ----------------------------------------
-- UPDATE --
SET SQL_SAFE_UPDATES=0;
SELECT * FROM cats;
UPDATE cats SET breed="Shorthair" 
WHERE breed='Tabby';

UPDATE cats SET age=14 
WHERE name='Misty';

-- Note : before updating check select statement also same for delete

select * from cats;
update cats set name='Jackson' where cat_id =7;
update cats set name='Jack' where name='Jackson';


update cats set age = 12 where breed = 'Maine Coon';
select * from cats where name = 'Ringo';
update cats set breed = 'British Shorthair' where name = 'Ringo';

-- DELETE --
DELETE FROM cats;  -- deletes every row
DELETE FROM cats where name = 'Egg';
DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE cat_id=age;
DELETE FROM cats;