SELECT e1.name
FROM Employee e1
WHERE e1.id IN (
    SELECT managerID
    FROM Employee
    WHERe managerID IS NOT NULL
    GROUP BY managerID
    HAVING COUNT(*) >= 5
);