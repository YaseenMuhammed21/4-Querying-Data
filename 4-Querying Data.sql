-- Insert 10 rows into both tables, as given below. 
-- Create a table named Country with fields: Id, Country_name, Population and Area 
-- Create another table named Persons with fields: Id, Fname, Lname, Population, Rating, Country_Id and Country_name 
-- (1)List the distinct country names from the Persons table 
-- (2)Select first names and last names from the Persons table with aliases. 
-- (3)Find all persons with a rating greater than 4.0. 
-- (4)Find countries with a population greater than 10 lakhs. 
-- (5)Find persons who are from 'USA' or have a rating greater than 4.5. 
-- (6)Find all persons where the country name is NULL. 
-- (7)Find all persons from the countries 'USA', 'Canada', and 'UK'. 
-- (8)Find all persons not from the countries 'India' and 'Australia'. 
-- (9)Find all countries with a population between 5 lakhs and 20 lakhs. 
-- (10)Find all countries whose names do not start with 'C'.

#CREATING THE DATABASE AS POPULATION TABLE

CREATE DATABASE POPULATION_TABLE;

#USING THE DATABASE POPULATION TABLE

USE POPULATION_TABLE;

#CREATING TABLE NAMED Country WITH FIELDS: Id, Country_name, Population and Area AND ANOTHER TABLE NAMED Persons WITH FIELDS: Id, Fname, Lname, Population, Rating, Country_Id and Country_name

-- CREATING TABLE NAMED Country WITH FIELDS: Id, Country_name, Population, and Area
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population INT,
    Area INT
);

-- CREATING TABLE NAMED Persons WITH FIELDS: Id, Fname, Lname, Population, Rating, Country_Id, and Country_name
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100) NOT NULL,
    Lname VARCHAR(100),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);

DESC Country;
DESC Persons;

# INSERTING DATA INTO Country TABLE
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
	(1, 'USA', 331000000, 9833517),
	(2, 'Canada', 37742154, 9984670),
	(3, 'India', 1380004385, 3287263),
	(4, 'Australia', 25687041, 7692024),
	(5, 'UK', 67886011, 243610),
	(6, 'Germany', 83783942, 357022),
	(7, 'France', 67081000, 551695),
	(8, 'Italy', 60265000, 301340),
	(9, 'Japan', 126476461, 377975),
	(10, 'Mexico', 128933000, 1964375)
;

# INSERTING DATA INTO Persons TABLE
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
	(1, 'John', 'Doe', 200000, 4.2, 1, 'USA'),
	(2, 'Alice', 'Smith', 300000, 4.5, 2, 'Canada'),
	(3, 'Bob', 'Johnson', 130000, 3.8, 3, 'India'),
	(4, 'Charlie', 'Brown', 350000, 4.9, 4, 'Australia'),
	(5, 'Daisy', 'White', 300000, 3.5, 5, 'UK'),
	(6, 'Eve', 'Davis', 300000, 4.1, 6, 'Germany'),
	(7, 'Frank', 'Miller', 300000, 4.8, 7, 'France'),
	(8, 'Grace', 'Wilson', 400000, 4.3, 8, 'Italy'),
	(9, 'Hank', 'Moore', 600000, 5.0, 9, 'Japan'),
	(10, 'James', 'Bond', 700000, 4.6, 10, 'Mexico'),
	(11, 'Sasi', null, 100000, 4.2, 1, 'USA'),
	(12, 'Taylor', 'Smith', 300000, 4.5, 2, 'Canada'),
	(13, 'Baby', null, 150000, 3.8, 3, 'India'),
	(14, 'Chareles', null, 350000, 4.9, 4, 'Australia'),
	(15, 'Jessy', 'White', 400000, 3.5, 5, 'UK'),
	(16, 'Ram', 'Ramesh', 450000, 4.1, 6, 'Germany'),
	(17, 'Killer', 'Miller', 300000, 4.8, 7, 'France'),
	(18, 'James', null, 400000, 4.3, 8, 'Italy'),
	(19, 'Tom', null, 600000, 5.0, 9, 'Japan'),
	(20, 'Freddy', null, 700000, 4.6, 10, 'Mexico')
;

SELECT * FROM Country;
# (1)List the distinct country names from the Persons table 

SELECT DISTINCT Country_name FROM Persons;

# (2)Select first names and last names from the Persons table with aliases. 

SELECT Fname AS First_Name, Lname AS Last_Name FROM Persons;

# (3)Find all persons with a rating greater than 4.0. 

SELECT * FROM Persons WHERE Rating > 4.0;

# (4)Find countries with a population greater than 10 lakhs. 

SELECT * FROM Country WHERE Population > 1000000;

# (5)Find persons who are from 'USA' or have a rating greater than 4.5. 

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

# (6)Find all persons where the country name is NULL. 

SELECT * FROM Persons WHERE Country_name IS NULL;

# (7)Find all persons from the countries 'USA', 'Canada', and 'UK'. 

SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

# (8)Find all persons not from the countries 'India' and 'Australia'. 

SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

# (9)Find all countries with a population between 5 lakhs and 20 lakhs. 

SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

SELECT * FROM Country WHERE Population BETWEEN 200000000 AND 1000000000;

# (10)Find all countries whose names do not start with 'C'.

SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';


