-- Review 1 - Tasks
-- 1. List all the Canadian cities and their populations

SELECT City, Population FROM north_american_cities
WHERE Country = "Canada";

-- 2. Order all the cities in the United States by their latitude from north to south

SELECT * FROM north_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC;

-- 3. List all the cities west of Chicago, ordered from west to east

SELECT City FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude;

-- 4. List the two largest cities in Mexico (by population)

SELECT City FROM north_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
Limit 2;

-- 5. List the third and fourth largest cities (by population) in the United States and their population

SELECT City FROM north_american_cities
WHERE Country LIKE "United States"
ORDER BY Population DESC
LIMIT 2 OFFSET 2;