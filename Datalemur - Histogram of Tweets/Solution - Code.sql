## Problem: https://github.com/Caio-Felice-Cunha/SQl_Problems/blob/main/Datalemur%20-%20Histogram%20of%20Tweets/Problem.md
## My Solution

WITH TweetsCountCTE AS(
  SELECT 
    user_id,
    COUNT(tweet_id) AS NumberTweets
  FROM 
    tweets
  WHERE
    tweet_date BETWEEN '2022-01-01' AND '2022-12-31'
  GROUP BY
    user_id)
SELECT
  NumberTweets,
  COUNT(user_id) AS NumberUsers
FROM
  TweetsCountCTE
GROUP BY
  NumberTweets;
