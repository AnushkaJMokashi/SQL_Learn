-- COUNT --
SELECT COUNT(*) FROM books;
 -- Multiple rows doesn't work
 
 SELECT COUNT(author_fname) FROM books;
 
 SELECT COUNT(DISTINCT author_fname) FROM books;
 
SELECT COUNT(released_year) FROM books;
SELECT COUNT(DISTINCT released_year) FROM books;

 SELECT title FROM books WHERE title LIKE '%the%';
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

-- GROUP BY --
SELECT author_lname from books;
SELECT author_lname from books group by author_lname;

select count(title), author_lname from books group by author_lname;

select author_lname,COUNT(*) from books group by author_lname,author_fname;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS fullname,
    COUNT(*)
FROM
    books
GROUP BY fullname;
SELECT author_lname, COUNT(*) 
FROM books
GROUP BY author_lname;
 
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

-- MIN & 
SELECT MIn(pages) from books;
-- SELECT MIn(pages),title from books; -- wrong query

select title, pages from books order by pages desc limit 1;
-- can't retrive the books having same no. of max pages
-- SUBQUERIES --

SELECT title, pages from books 
where pages = (select min(pages) from books); 
-- gives all the solutions unlike the above one

SELECT title, released_year FROM books 
WHERE released_year = (SELECT MIN(released_year) FROM books);

-- GROUP BY MULTIPLE COLUMNS --

SELECT author_fname, author_lname, COUNT(*) 
FROM books 
GROUP BY author_lname, author_fname;
 
 -- MIN MAX with GROUP BY
SELECT CONCAT(author_fname, ' ', author_lname) AS author,  COUNT(*)
FROM books
GROUP BY author;

SELECT author_lname, MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT author_lname, MAX(released_year), MIN(released_year) FROM books GROUP BY author_lname;
 
SELECT 
	author_lname, 
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release,
      MAX(pages) AS longest_page_count
FROM books GROUP BY author_lname;
 
 
SELECT 
	author_lname, 
        author_fname,
	COUNT(*) as books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year)  AS earliest_release
FROM books GROUP BY author_lname, author_fname;

-- SUM --
SELECT SUM(pages) FROM books;

SELECT author_lname, COUNT(*), SUM(pages)
FROM books
GROUP BY author_lname;

-- AVG --
SELECT AVG(pages) FROM books;
 
SELECT AVG(released_year) FROM books;
 
 -- Exercise--
SELECT 
    released_year, 
    AVG(stock_quantity), 
    COUNT(*) FROM books
GROUP BY released_year;

SELECT COUNT(*) FROM books;
 
SELECT released_year, COUNT(*) 
FROM books GROUP BY released_year;
 
SELECT SUM(stock_quantity) FROM books;
 
SELECT AVG(released_year) 
FROM books GROUP BY author_lname, author_fname;
 
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
 
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages FROM books
ORDER BY pages DESC LIMIT 1;
 
 
SELECT 
    released_year AS year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year
ORDER BY released_year;

-- 