-- https://leetcode.com/problems/invalid-tweets/description/

SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;