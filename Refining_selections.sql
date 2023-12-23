INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
SELECT DISTINCT(author_lname) FROM books;

SELECT released_year FROM books;

SELECT DISTINCT released_year FROM books;

SELECT CONCAT(author_fname,' ',author_lname) FROM books;

SELECT DISTINCT CONCAT(author_fname,' ',author_lname) FROM books;
-- distict first and last name combination

SELECT DISTINCT author_fname, author_lname FROM books;
-- both columns must be same 

SELECT title, released_year FROM books 
ORDER BY released_year DESC LIMIT 1,3;

SELECT * FROM books;


-- LIMIT --
SELECT * FROM tbl LIMIT 95,18446744073709551615; -- error limit exceeded


-- LIKE --
SELECT * FROM books WHERE title LIKE ':';
SELECT * FROM books WHERE title LIKE '%:%';

SELECT * FROM books WHERE author_fname LIKE '____'; -- no. of characters in the word means no. of underscores
SELECT * FROM books WHERE author_fname LIKE '%__';
SELECT * FROM books WHERE author_fname LIKE '_a_';
SELECT * FROM books WHERE author_fname LIKE '%_a';
SELECT * FROM books WHERE author_fname LIKE '%n';
SELECT * FROM books WHERE author_fname LIKE '%N'; -- like is not a case sensitive
SELECT * FROM books WHERE author_fname LIKE '%\%';
SELECT * FROM books WHERE author_fname LIKE '\%';
-- To select books with '%' in their title:
SELECT * FROM books
WHERE title LIKE '%\%%';
 
-- To select books with an underscore '_' in title:
SELECT * FROM books
WHERE title LIKE '%\_%';

SELECT * FROM books;


SELECT title FROM books WHERE title LIKE '%stories%';
 
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1; -- longest book
 
SELECT 
    CONCAT(title, ' - ', released_year) AS summary 
FROM books ORDER BY released_year DESC LIMIT 3;  -- summary of books
 
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %'; -- author_lname with space
 
SELECT title, released_year, stock_quantity 
FROM books ORDER BY stock_quantity LIMIT 3;    
 
SELECT title, author_lname 
FROM books ORDER BY author_lname, title;
 
SELECT title, author_lname 
FROM books ORDER BY 2,1;
 
SELECT
    CONCAT(
        'MY FAVORITE AUTHOR IS ',
        UPPER(author_fname),
        ' ',
        UPPER(author_lname),
        '!'
    ) AS yell
FROM books ORDER BY author_lname;


