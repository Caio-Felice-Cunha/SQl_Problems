# Problem: Cards Issued Difference [JPMorgan Chase SQL Interview Question]
Easy | JPMorgan Chase<br>
Link: https://datalemur.com/questions/cards-issued-difference<br>
<br>
Your team at JPMorgan Chase is soon launching a new credit card, and to gain some context, you are analyzing how many credit cards were issued each month.<br>

Write a query that outputs the name of each credit card and the difference in issued amount between the month with the most cards issued, and the least cards issued. Order the results according to the biggest difference.<br>

monthly_cards_issued Table:<br>
![image](https://user-images.githubusercontent.com/111542025/236264843-a9b84325-cc9d-449a-8c65-5ab77cb531ee.png)
![image](https://user-images.githubusercontent.com/111542025/236264903-f91c1ee9-f69e-42c3-9034-8dc478cba6bf.png)

# My Solution
````sql
SELECT 
  card_name,
  max(issued_amount) - min(issued_amount) AS difference
FROM 
  monthly_cards_issued
GROUP BY
  card_name
ORDER BY 
  difference DESC;
````

