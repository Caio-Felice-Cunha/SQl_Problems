## Problem: https://github.com/Caio-Felice-Cunha/SQl_Problems/blob/main/StrataScratch%20-%20Popularity%20Percentage/Problem.md
-- My Solution:

WITH PairsUniqueCTE AS (
    SELECT 
        DISTINCT user1 AS UserId 
    FROM 
        facebook_friends
  UNION
    SELECT 
        DISTINCT user2 AS UserId 
    FROM 
        facebook_friends
),
CountFriendsCTE AS (
    SELECT 
        UserId,
        COUNT(*) AS TotalFriends
    FROM (
        SELECT user1 AS UserId FROM facebook_friends
    UNION ALL
        SELECT user2 AS UserId FROM facebook_friends) AS TotalUsers
    GROUP BY 
        UserId
)
SELECT 
  PairsUniqueCTE.UserId,
  (CountFriendsCTE.TotalFriends 
    / (SELECT COUNT(DISTINCT UserId) FROM PairsUniqueCTE)) * 100 AS popularity_percent
FROM 
    PairsUniqueCTE
        LEFT JOIN 
    CountFriendsCTE USING(UserId)
ORDER BY  PairsUniqueCTE.UserId ASC;
