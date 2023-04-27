# Problem: Population Density Difference
Easy<br>
Link: https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true <br>
<br>
Query the difference between the maximum and minimum populations in CITY.

### Input Format
The CITY table is described as follows:<br>
![image](https://user-images.githubusercontent.com/111542025/234862988-d4811274-1d98-4328-bbdd-f5e3974ca149.png)

# My Solution
 ````sql
 SELECT
    MAX(POPULATION) - MIN(POPULATION) AS DifMinMax
FROM
    CITY;
````
