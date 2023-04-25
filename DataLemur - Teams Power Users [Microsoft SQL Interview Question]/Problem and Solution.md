# Problem: Teams Power Users [Microsoft SQL Interview Question]
Easy | Microsoft<br>
Link: https://datalemur.com/questions/teams-power-users <br>
Write a query to identify the top 2 Power Users who sent the highest number of messages on Microsoft Teams in August 2022. Display the IDs of these 2 users along with the total number of messages they sent. Output the results in descending order based on the count of the messages.<br>
Assumption:
* No two users have sent the same number of messages in August 2022.

messages Table:<br>
![image](https://user-images.githubusercontent.com/111542025/234314159-3f2c934e-c667-4703-b7fa-d7fad7be73e2.png)
<br>
messages Example Input:<br>
![image](https://user-images.githubusercontent.com/111542025/234314267-affde525-0fda-42f7-a575-d42385b165f5.png)
<br>
# My Solution
````sql
SELECT
  sender_id,
  COUNT(sender_id) AS message_count
FROM 
  messages
WHERE
  DATE_PART('year', sent_date) = '2022' AND
  DATE_PART('month', sent_date) = '08'
GROUP BY 
  sender_id
ORDER BY
  COUNT(sender_id) DESC
LIMIT 2;
````
