# Problem: The Blunder
Easy | Aggregation<br>
Link: https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
<br>

Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.<br>

Write a query calculating the amount of error (i.e.:  actual - miscalculated average monthly salaries), and round it up to the next integer.<br>

Employees table:<br>
![image](https://user-images.githubusercontent.com/111542025/236263856-a1a48892-bf28-4c8b-9e97-d51a4b7186db.png)
![image](https://user-images.githubusercontent.com/111542025/236263900-55ffd9c6-5a4f-4189-8e94-5ba688cd4b46.png)

# My Solution
````sql
SELECT 
    (ROUND(
        AVG(
            ROUND(Salary,0)),0)) 
            
            -
            
                (ROUND(
                    AVG(
                        REPLACE(
                            ROUND(Salary,0),'0',"")),0)) AS ActualAvg
FROM 
    EMPLOYEES;
````
