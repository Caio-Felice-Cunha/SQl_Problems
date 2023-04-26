# Problem: Japan Population
Easy<br>
Link: https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true<br>
<br>
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.<br>
### Input Format:
The CITY table is described as follows:<br>
![image](https://user-images.githubusercontent.com/111542025/234585730-40706fea-01ce-4ebe-99e0-88126443f79f.png)

# My Solution:
````sql
SELECT
    SUM(POPULATION)
FROM
    CITY
WHERE
    COUNTRYCODE = 'JPN'
````
