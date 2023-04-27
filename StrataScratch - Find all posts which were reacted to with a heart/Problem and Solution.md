# Problem: Find all posts which were reacted to with a heart
Meta/Facebook | Easy | ID | 10087 <br>
Data Engineer | BI Analyst | Data Analyst <br>
Link: https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart?code_type=3<br>
<br>
Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.<br>
Tables: facebook_reactions, facebook_posts<br>
![image](https://user-images.githubusercontent.com/111542025/234864891-d05ee32f-80ff-4b6f-bc93-7859bf22b4b6.png)
<br>
![image](https://user-images.githubusercontent.com/111542025/234864955-4c98eb34-3add-4d35-b7b5-d1461173fb3c.png)

# My Solution
````sql
SELECT 
    DISTINCT facebook_posts.post_id,
    facebook_posts.poster,
    facebook_posts.post_text,
    facebook_posts.post_keywords,
    facebook_posts.post_date
FROM 
    facebook_reactions
        JOIN
    facebook_posts USING(post_id)
WHERE
    reaction = 'heart';
````
