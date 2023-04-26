# Problem: Number Of Units Per Nationality
Airbnb | Medium | ID 10156<br>
Data Engineer | Data Scientist | BI Analyst | Data Analyst<br>
Link: https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?code_type=3 <br>

Find the number of apartments per nationality that are owned by people under 30 years old.<br>
Output the nationality along with the number of apartments.<br>
Sort records by the apartments count in descending order.<br>
Tables: airbnb_hosts, airbnb_units:
* airbnb_hosts<br>
![image](https://user-images.githubusercontent.com/111542025/234315487-0f4b1df0-5122-46cd-b3b2-35f7d66681f0.png)
* airbnb_units<br>
![image](https://user-images.githubusercontent.com/111542025/234315574-d76686c9-b9c0-4565-9cec-509be36d3222.png)

# My Solution
````sql
SELECT 
    airbnb_hosts.nationality, 
    COUNT(DISTINCT airbnb_units.unit_id) apartment_count
FROM 
    airbnb_hosts
        join 
    airbnb_units USING(host_id)
WHERE 
    airbnb_hosts.age < 30 
    AND airbnb_units.unit_type = 'Apartment'
GROUP BY
    airbnb_hosts.nationality
ORDER BY
    apartment_count DESC;
````
