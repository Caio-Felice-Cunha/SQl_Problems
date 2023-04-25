# Problem: Ranking Most Active Guests
Airbnb | Medium | ID 10159 <br>
Data Engineer | Data Scientist | BI Analyst | Data Analyst <br>
link: https://platform.stratascratch.com/coding/10159-ranking-most-active-guests?code_type=3

Rank guests based on the number of messages they've exchanged with the hosts. Guests with the same number of messages as other guests should have the same rank. Do not skip rankings if the preceding rankings are identical.<br>
Output the rank, guest id, and number of total messages they've sent. Order by the highest number of total messages first.

table: airbnb_contacts<br>
![image](https://user-images.githubusercontent.com/111542025/234154569-c8c08a34-0f6b-4a10-8baa-820bc08f406e.png)

# My Solution
````sql
SELECT 
    DENSE_RANK() OVER(
        ORDER BY SUM(n_messages) DESC) AS Ranking,
    id_guest,
    SUM(n_messages)
FROM 
    airbnb_contacts
GROUP BY
    id_guest
ORDER BY
    SUM(n_messages) desc;
````
