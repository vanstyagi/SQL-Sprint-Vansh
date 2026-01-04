-- https://leetcode.com/problems/customers-who-never-order/description/

SELECT Customers.name AS Customers
FROM Customers
LEFT JOIN Orders
  ON Customers.id = Orders.customerId
WHERE Orders.id IS NULL;
