-- SQL Police Department

-- 1. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries' details.

SELECT *
FROM mailing_ list;

-- 2. White hat hacker has sent SQLPD exposed subscribers' details of a shady site connected to various persons of interest. Please submit all subscribers' details.

SELECT *
FROM subscribers;

-- 3. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries join dates and number of promotions sent details.

SELECT Joined, PromotionsSent
FROM mailing_ list;

-- 4. An illegal site's servers were seized in a recent operation. Please submit all users number of posts, access times and emails' details.


SELECT NumberOfPosts, AccessTime, Email
FROM users;


-- 5. A hacked site members' details have surfaced on a darknet forum. Please submit all members addresses and usernames' details.

SELECT Address, Username
FROM members;

-- 6. An illegal site's servers were seized in a recent operation. Please submit all users access times and emails' details.

SELECT AccessTime, Email
FROM users;

-- 7. An illegal site's servers were seized in a recent operation. Please submit all users given names' details. Please make sure there are no duplicates.

SELECT DISTINCT GivenName
FROM users;

-- 8. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries join dates' details. Please make sure there are no duplicates.

SELECT DISTINCT Joined
FROM mailing_list;


-- 9. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all records' details sorted by email addresses in ascending order.

SELECT *
FROM mailing_list
ORDER BY EmailAddress;

-- 10. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries' details sorted by last names in ascending order.

SELECT *
FROM mailing_ list
ORDER BY LastName;

-- 11. A mailing list of an illegal online service was sent to the SQLPD hot-line. Please submit all entries' details sorted by join dates in descending order.

SELECT *
FROM mailing_list
ORDER BY Joined DESC;

-- 12. An illegal site's servers were seized in a recent operation. Please submit all users first names, surnames and access times' details sorted by surnames in descending order. Please make sure there are no duplicates.

SELECT DISTINCT FirstName, Surname, AccessTime
FROM users
ORDER BY Surname DESC;

-- 13. White hat hacker has sent SQLPD exposed members' details of a shady site connected to various persons of interest. Please submit all members joined on dates and number of purchases' details sorted by joined on dates in descending order and then by number of purchases in ascending order.

SELECT JoinedOn, Purchases
FROM members
ORDER BY JoinedOn DESC, Purchases;

-- 14. White hat hacker has sent SQLPD exposed members' details of a shady site connected to various persons of interest. Please submit the top 20 members' details when sorted by number of comments in descending order and then by password hashes in descending order.

SELECT *
FROM members
ORDER BY NumberOfComments DESC, PasswordHash DESC
LIMIT 20;

-- 15. A hacked site subscribers' details have surfaced on a darknet forum. Please submit the top 20 subscribers addresses and password hashes' details when sorted by password hashes in ascending order and then by addresses in descending order. Please make sure there are no duplicates.

SELECT DISTINCT Address, PasswordHash
FROM subscribers
ORDER BY PasswordHash, Address DESC
LIMIT 20;
