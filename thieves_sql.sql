-- Verify connection to DB using the Actor Table
SELECT first_name
FROM actor; 

-- SELECT first_name and last_name
-- FROM actor TABLE
SELECT first_name, last_name
FROM actor;


-- Query first_name which equals 'Nick'
-- Using the WHERE Clause
select first_name, last_name
FROM actor
WHERE first_name = 'Nick';


-- Query first_name which equals 'Nick'
-- Using LIKE clause
-- NOTE: ( = ) is looking for a literal string
-- while the LIKE Clause allows use for wildcards
select first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';


-- Using LIKE Clause and WILD CARD ( % )
-- Get all J names
select first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

-- Single Character Wild Card ( _ )
select first_name, last_name
FROM actor
WHERE first_name LIKE 'J__';

-- Query for all first_names that start with 'K__%' has two letters, anything goes after
select first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%';

----- Comparasion Operators:
-- = Equals to
-- > Greater Than
-- < Less Than
-- >= Greater Than or Equal to
-- <= Less Than or Equal to
-- <> Not equals

-- Using Comparasion Operators with the Payment Table


-- Query WHERE amount GREATER THAN $10.
SELECT amount
FROM payment
WHERE amount > 10;

-- Query amounts BETWEEN $10-$15
-- NOTE: When using BETWEEN both values are inclusive
SELECT amount
FROM payment
WHERE amount BETWEEN 100 AND 150;

-- Order the payments by amount
-- Using the ORDER BY
-- ASC for ascending order (Default)
-- DESC for decending order


-- Query all payments NOT EQUAL to 2.99


----- Aggregate Functions
-- MIN()
-- MAX()
-- SUM()
-- AVG()
-- COUNT()

-- Query the SUM of amounts GREATER THAN OR EQUAL TO 5.99


-- Query the AVG of amounts GREATER THAN OR EQUAL TO 5.99


-- Query the COUNT of amounts GREATER THAN OR EQUAL TO 5.99


-- Query to display the count of DISTINCT amounts paid


-- Query to display the MIN paid using alias


-- Query to display the MAX paid using alias


-- GROUP BY (Used with aggregate functions)


-- Query the customer that paid the most