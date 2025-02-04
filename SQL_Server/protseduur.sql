--//=========================================================
-- SQL SALVESTATUD PROTSEDUUR --
-- funktsioon, mis k�ivitab 
-- serveris mitu SQL tegevust j�rjest

-- Kasutame SQL Server
--//=========================================================

CREATE DATABASE protseduurLitvinenko;
USE protseduurLitvinenko;

CREATE TABLE City(
	ID int PRIMARY KEY IDENTITY(1,1),
	Name varchar(30),
	Population int
);

SELECT * FROM City;
--DROP TABLE City

INSERT INTO City(Name, Population) 
	VALUES
	('Tallinn', 300000),
	('Narva', 40000),
	('P�rnu', 60000),
	('Rakvere', 10000),
	('Tartu', 90000);

--//=========================================================
-- Protseduuri loomine
-- Protseduur, mis lisab uus linn ja kohe n�itab tabelis
--//=========================================================
CREATE PROCEDURE AddCity ( @name varchar(30), @population int ) AS
BEGIN
	INSERT INTO City(Name, Population)
		VALUES (@name, @population);
	SELECT * FROM City;
END;

--DROP PROCEDURE AddCity

-- protseduuri kutse
EXEC AddCity @name = 'City 17', @population = 1000000;

-- lithsam
EXEC AddCity 'City 18', 500000;
EXEC AddCity 'City 19', 200000;
EXEC AddCity 'City 20', 180000;
EXEC AddCity 'City 21', 7000;

--//=========================================================
-- Protseduur, mis kustutab linn id j�rgi
--//=========================================================
CREATE PROCEDURE DeleteCityByID ( @deleteID int ) AS
BEGIN
	SELECT * FROM City;
	DELETE FROM City WHERE ID=@deleteID;
	SELECT * FROM City;
END;

-- protseduuri kustutamine
--DROP PROCEDURE DeleteCityByID

EXEC DeleteCityByID 2;

--//=========================================================
-- Protseduur, mis otsib linn esimese t�hte jargi
--//=========================================================
CREATE PROCEDURE FindCityByFirstChar ( @firstChar char(1) ) AS
BEGIN
	SELECT * FROM City WHERE Name LIKE @firstChar + '%'; -- % - k�ik teised t�hed
END;

EXEC FindCityByFirstChar 'N';

--//=========================================================
-- tabeli uuendmine
-- rahvaarv kasvab 10% v�rra
--//=========================================================
UPDATE City SET Population = Population * 1.1

UPDATE City SET Population = Population * 1.1
WHERE ID=1;

SELECT * FROM City;

--//=========================================================
-- Protseduur, mis suurendab rahvaarvu protsentides
--//=========================================================
CREATE PROCEDURE IncreasePopulationByPercentage ( @cityID int, @percentage decimal(2,1) ) AS
BEGIN
	SELECT * FROM City;
	UPDATE City SET Population = Population * @percentage
	WHERE ID=@cityID;
	SELECT * FROM City;
END;

--DROP PROCEDURE IncreasePopulationByPercentage

EXEC IncreasePopulationByPercentage 1, 1.2;