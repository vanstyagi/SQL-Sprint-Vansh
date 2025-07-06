SELECT 
    activity_date AS login_date,
    COUNT(DISTINCT user_id) AS user_count
FROM 
    Traffic
WHERE 
    activity = 'login'
    AND activity_date >= DATE_SUB('2019-06-30', INTERVAL 90 DAY)
    AND user_id NOT IN (
        SELECT user_id
        FROM Traffic
        WHERE activity = 'login'
        AND activity_date < DATE_SUB('2019-06-30', INTERVAL 90 DAY)
    )
GROUP BY 
    activity_date
ORDER BY 
    activity_date;
