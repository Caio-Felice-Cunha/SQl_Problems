# Problem: Find matching hosts and guests in a way that they are both of the same gender and nationality
Link: https://platform.stratascratch.com/coding/10078-find-matching-hosts-and-guests-in-a-way-that-they-are-both-of-the-same-gender-and-nationality?code_type=3<br>
Airbnb | Medium | ID | 10078<br>
Data Engineer | BI Analyst | Data Analyst<br>
<br>
Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.<br>
Output the host id and the guest id of matched pair.<br>
<br>
Tables: airbnb_hosts, airbnb_guests<br>
![image](https://user-images.githubusercontent.com/111542025/236266142-e9985d59-284f-4091-9847-31648dcc76fe.png)
![image](https://user-images.githubusercontent.com/111542025/236266169-0e2c7239-fd23-4c6f-ac12-ce591b649984.png)

# My Solution
````sql
SELECT 
    DISTINCT host_id,
    guest_id
FROM 
    airbnb_hosts
        JOIN
    airbnb_guests ON airbnb_hosts.nationality = airbnb_guests.nationality 
                     AND airbnb_hosts.gender = airbnb_guests.gender ;
````
