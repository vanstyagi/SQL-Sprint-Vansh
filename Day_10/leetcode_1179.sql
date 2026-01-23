SELECT
    id,
    SUM(CASE WHEN month = 'Jan' THEN revenue ELSE 0 END) AS Jan_Revenue,
    SUM(CASE WHEN month = 'Feb' THEN revenue ELSE 0 END) AS Feb_Revenue,
    SUM(CASE WHEN month = 'Mar' THEN revenue ELSE 0 END) AS Mar_Revenue,
    SUM(CASE WHEN month = 'Apr' THEN revenue ELSE 0 END) AS Apr_Revenue,
    SUM(CASE WHEN month = 'May' THEN revenue ELSE 0 END) AS May_Revenue,
    SUM(CASE WHEN month = 'Jun' THEN revenue ELSE 0 END) AS Jun_Revenue,
    SUM(CASE WHEN month = 'Jul' THEN revenue ELSE 0 END) AS Jul_Revenue,
    SUM(CASE WHEN month = 'Aug' THEN revenue ELSE 0 END) AS Aug_Revenue,
    SUM(CASE WHEN month = 'Sep' THEN revenue ELSE 0 END) AS Sep_Revenue,
    SUM(CASE WHEN month = 'Oct' THEN revenue ELSE 0 END) AS Oct_Revenue,
    SUM(CASE WHEN month = 'Nov' THEN revenue ELSE 0 END) AS Nov_Revenue,
    SUM(CASE WHEN month = 'Dec' THEN revenue ELSE 0 END) AS Dec_Revenue
FROM Department
GROUP BY id
ORDER BY id;
