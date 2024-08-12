# SQLBolt-Diamante

by: `JC Diamante`
<br><br>
This repository contains my answers to SQLBolt's Introduction to SQL Activities <br><br>
<b>SQLBolt</b> - https://sqlbolt.com/lesson/introduction

## Review 1 - Tasks
### 1. List all the Canadian cities and their populations

```SQL
SELECT City, Population FROM north_american_cities
WHERE Country = "Canada";
```

### 2. Order all the cities in the United States by their latitude from north to south

```SQL
SELECT City FROM north_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC;
```

### 3. List all the cities west of Chicago, ordered from west to east

```SQL
SELECT City FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude;
```

### 4. List the two largest cities in Mexico (by population)

```SQL
SELECT City FROM north_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
Limit 2;
```

### 5. List the third and fourth largest cities (by population) in the United States and their population

```SQL
SELECT City FROM north_american_cities
WHERE Country LIKE "United States"
ORDER BY Population DESC
LIMIT 2 OFFSET 2;
```



## Exercise 12 - Tasks

### 1. Find the number of movies each director has directed

```SQL
SELECT Director, COUNT(id) as Count_Movies_Directed FROM Movies
GROUP BY Director;
```

### 2. Find the total domestic and international sales that can be attributed to each director

```SQL
SELECT Director, SUM(Domestic_sales + International_sales) as Total_Domestic_International
FROM Movies
    INNER JOIN Boxoffice
        ON Movies.id = Boxoffice.movie_id
GROUP BY Director;
```

## SQL Police Department

### 1. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries' details.

```SQL
SELECT *
FROM mailing_ list;
```

### 2. White hat hacker has sent SQLPD exposed subscribers' details of a shady site connected to various persons of interest. Please submit all subscribers' details.

```SQL
SELECT *
FROM subscribers;

```

### 3. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries join dates and number of promotions sent details.

```SQL
SELECT Joined, PromotionsSent
FROM mailing_ list;
```

### 4. An illegal site's servers were seized in a recent operation. Please submit all users number of posts, access times and emails' details.

```SQL
SELECT NumberOfPosts, AccessTime, Email
FROM users;
```

### 5. A hacked site members' details have surfaced on a darknet forum. Please submit all members addresses and usernames' details.

```SQL
SELECT Address, Username
FROM members;
```

### 6. An illegal site's servers were seized in a recent operation. Please submit all users access times and emails' details.

```SQL
SELECT AccessTime, Email
FROM users;
```

### 7. An illegal site's servers were seized in a recent operation. Please submit all users given names' details. Please make sure there are no duplicates.

```SQL
SELECT DISTINCT GivenName
FROM users;
```

### 8. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries join dates' details. Please make sure there are no duplicates.

```SQL
SELECT DISTINCT Joined
FROM mailing_list;
```

### 9. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all records' details sorted by email addresses in ascending order.

```SQL
SELECT *
FROM mailing_list
ORDER BY EmailAddress;
```

### 10. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries' details sorted by last names in ascending order.

```SQL
SELECT *
FROM mailing_ list
ORDER BY LastName;
```


### 11. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries' details sorted by join dates in descending order.

```SQL
SELECT *
FROM mailing_list
ORDER BY Joined DESC;
```

### 12. An illegal site's servers were seized in a recent operation. Please submit all users first names, surnames and access times' details sorted by surnames in descending order. Please make sure there are no duplicates.

```SQL
SELECT DISTINCT FirstName, Surname, AccessTime
FROM users
ORDER BY Surname DESC;
```

### 13. White hat hacker has sent SQLPD exposed members' details of a shady site connected to various persons of interest. Please submit all members joined on dates and number of purchases' details sorted by joined on dates in descending order and then by number of purchases in ascending order.

```SQL
SELECT JoinedOn, Purchases
FROM members
ORDER BY JoinedOn DESC, Purchases;
```

### 14. White hat hacker has sent SQLPD exposed members' details of a shady site connected to various persons of interest. Please submit the top 20 members' details when sorted by number of comments in descending order and then by password hashes in descending order.

```SQL
SELECT *
FROM members
ORDER BY NumberOfComments DESC, PasswordHash DESC
LIMIT 20;
```

### 15. A hacked site subscribers' details have surfaced on a darknet forum. Please submit the top 20 subscribers addresses and password hashes' details when sorted by password hashes in ascending order and then by addresses in descending order. Please make sure there are no duplicates.

```SQL
SELECT DISTINCT Address, PasswordHash
FROM subscribers
ORDER BY PasswordHash, Address DESC
LIMIT 20;
```