-- Exercise 12 - Tasks

-- 1. Find the number of movies each director has directed

SELECT Director, COUNT(id) as Count_Movies_Directed FROM Movies
GROUP BY Director;

-- 2. Find the total domestic and international sales that can be attributed to each director

SELECT Director, SUM(Domestic_sales + International_sales) as Total_Domestic_International
FROM Movies
    INNER JOIN Boxoffice
        ON Movies.id = Boxoffice.movie_id
GROUP BY Director;