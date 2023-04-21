# Problem: Bikes Last Used
Lyft | DoorDash | Easy | ID 10176<br>
Data Engineer | Data Scientist | BI Analyst | Data Analyst<br>
Link: https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=3 <br>

Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.<br>

Table: dc_bikeshare_q1_2012<br>
![image](https://user-images.githubusercontent.com/111542025/233740126-0a8fcfab-2dc8-4a1d-a581-ca29e42f58e2.png) <br>

# My Solution
````sql
SELECT
  bike_number,
  MAX(end_time) AS bike_last_use
FROM
  dc_bikeshare_q1_2012
GROUP BY
  bike_number
ORDER BY
  bike_last_use DESC;
````
