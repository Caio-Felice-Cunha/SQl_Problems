# Problem: Second Day Confirmation [TikTok SQL Interview Question]
Easy | TikTok<br>
Link: https://datalemur.com/questions/second-day-confirmation <br>
<br> 
Assume you're given tables with information about TikTok user sign-ups and confirmations through email and text. New users on TikTok sign up using their email addresses, and upon sign-up, each user receives a text message confirmation to activate their account.<br>

Write a query to display the user IDs of those who did not confirm their sign-up on the first day, but confirmed on the second day.<br>

Definition:
* action_date refers to the date when users activated their accounts and confirmed their sign-up through text messages.

emails Table:<br>
![image](https://user-images.githubusercontent.com/111542025/234863797-d396377b-fa6e-4403-be08-85c5e2d4aa1d.png)
![image](https://user-images.githubusercontent.com/111542025/234863869-40d757a2-cc6e-4fb4-8258-bda40c8d05c1.png)
<br>
texts Table:<br>
![image](https://user-images.githubusercontent.com/111542025/234864132-df8dc186-84b0-44e3-92ec-0fb0f740928c.png)
![image](https://user-images.githubusercontent.com/111542025/234863942-cd2f2ab2-d5e4-4937-8119-be2574bd0c9f.png)

# My Solution
````sql
SELECT 
  emails.user_id
FROM 
  emails
    JOIN
  texts USING(email_id)
WHERE 
  texts.signup_action = 'Confirmed'
  AND EXTRACT(days 
        FROM AGE(texts.action_date::DATE, emails.signup_date::DATE)) = 1;
````
