CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area FLOAT);
  CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50));  
    INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9985000),
(3, 'UK', 67800000, 243000),
(4, 'India', 1393000000, 3287000),
(5, 'Australia', 25600000, 7692000);

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 3.8, 2, 'Canada'),
(3, 'Alice', 'Johnson', 67800000, 4.2, 3, 'UK'),
(4, 'Rahul', 'Verma', 1393000000, 3.6, 4, 'India'),
(5, 'Emily', 'Davis', 25600000, 4.8, 5, 'Australia'),
(8, 'Akira', 'Tanaka', 126000000, 4.7, 9, 'Japan'),
(9, 'Min', 'Choi', 52000000, 3.5, 10, 'South Korea'),
(10, 'Anna', 'Brown', 38000000, 4.6,5,'france');
select * from persons;
-- inner join
SELECT Persons.Fname, Persons.Rating, Country.Country_name
FROM Persons
INNER JOIN Country ON Persons.Id= Country.Id;
-- left join
SELECT Persons.Fname, Persons.Rating, Country.Country_name,country.Area,persons.Id
FROM Persons
left join Country ON Persons.Id= Country.Id;
-- right join
SELECT Persons.Fname, Persons.Rating, Country.Country_name,country.Area,persons.Id
FROM Persons
right join Country ON Persons.Id= Country.Id;
-- List all distinct country names from both the Country and Persons tables.
SELECT DISTINCT country_name FROM Country
UNION
SELECT DISTINCT country_name FROM Persons;
-- List all country names from both the Country and Persons tables, including duplicates. 
SELECT country_name FROM Country
UNION all
SELECT country_name FROM Persons;
-- Round the ratings of all persons to the nearest integer in the Persons table.
SELECT Id ,Fname , country_id, ROUND(rating) AS rounded_rating FROM Persons;

