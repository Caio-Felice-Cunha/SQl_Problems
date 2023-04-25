# Problem: Average Post Hiatus (Part 1) [Facebook SQL Interview Question]
Easy | Facebook <br>
Link: https://datalemur.com/questions/sql-average-post-hiatus-1

Given a table of Facebook posts, for each user who posted at least twice in 2021, write a query to find the number of days between each user’s first post of the year and last post of the year in the year 2021. Output the user and number of the days between each user's first and last post.<br>

table: posts Table <br>
![image](https://user-images.githubusercontent.com/111542025/234154990-c4b863e3-e972-4cff-bf6e-2ac0360cd275.png)
<br>
posts Example Input:<br>
![image](https://user-images.githubusercontent.com/111542025/234155056-148674e6-58fa-44c5-8673-ea5b4a93d65a.png)

# My Solution
````sql
SELECT 
	user_id, 
  MAX(post_date::DATE) - MIN(post_date::DATE) AS days_between
  
FROM 
  posts
WHERE 
  DATE_PART('year', post_date::DATE) = 2021 
GROUP BY 
  user_id
HAVING 
  COUNT(post_id)>1;
````
