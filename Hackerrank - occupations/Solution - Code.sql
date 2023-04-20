## Problem: https://github.com/Caio-Felice-Cunha/SQl_Problems/blob/main/Hackerrank%20-%20occupations/Problem.md
## My Solution

SELECT
    MIN(
        if(occupation = 'Doctor', name, null)) AS Doctor,
    MIN(
        if(occupation = 'Professor', name, null)) AS Professor,
    MIN(
        if(occupation = 'Singer', name, null)) AS Singer,
    MIN(
        if(occupation = 'Actor', name, null)) AS Actor
FROM
    (SELECT 
        name,
        occupation,
        ROW_NUMBER() 
            OVER (
                PARTITION BY occupation 
                ORDER BY name) as NumberRow 
     FROM 
        occupations) AS Order 
GROUP BY NumberRow;
