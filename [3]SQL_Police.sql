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

