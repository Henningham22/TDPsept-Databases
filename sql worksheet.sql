USE world;

show tables;
SELECT * FROM city;
SELECT * FROM country;
SELECT * FROM countrylanguage;
SELECT count(NAME) from city WHERE countrycode="USA";
#274
SELECT population, lifeexpectancy FROM country WHERE NAME="argentina";
# population 37032000 life expectancy 75.1
SELECT * FROM country ORDER BY lifeexpectancy DESC LIMIT 1;
#Andorra
SELECT country.name, country.capital FROM country Join city ON 
country.name=city.district WHERE capital="madrid";
#Madrid
SELECT * FROM country Join countrylanguage on country.region=countrylanguage.language;
#Big up Caribbean
SELECT * FROM country WHERE name LIKE "F%";

SELECT count(NAME) from city WHERE countrycode= "CHN";
#363
SELECT * FROM country ORDER BY population <1.00 LIMIT 2;

SELECT * FROM country ORDER BY surfacearea DESC LIMIT 10;

SELECT * FROM city WHERE countrycode ="jpn" limit 5;

UPDATE country SET HeadOfState="Elizabeth II" WHERE 
HeadOfState="Elisabeth II";
SELECT * FROM country WHERE HeadOfState= "Elisabeth II";

# SELECT * FROM country WHERE population=(SELECT area From country WHERE 