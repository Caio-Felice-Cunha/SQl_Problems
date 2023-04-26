# Problem: Count the number of movies that Abigail Breslin nominated for oscar
Google | Netflix | Easy | ID 10128<br>
Data Engineer | Data Scientist | BI Analyst | Data Analyst<br>
<br>
Count the number of movies that Abigail Breslin was nominated for an oscar.
<br>

### Table: oscar_nominees:
![image](https://user-images.githubusercontent.com/111542025/234588118-d7f28c25-33ce-4de3-abfe-bcbe4808b4a4.png)
![image](https://user-images.githubusercontent.com/111542025/234588210-6339cec0-ccdd-405e-b6c2-8626ca002b52.png)

# My Solution:
````sql
SELECT 
    COUNT(movie) AS n_movies_by_abi
FROM
    oscar_nominees
WHERE
    nominee = 'Abigail Breslin';
````
