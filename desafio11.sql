SELECT c.ContactName AS 'Nome',
c.Country AS 'País',
COUNT(c.CustomerID) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS c
INNER JOIN w3schools.customers AS c2
ON c.Country = c2.Country
GROUP BY c.CustomerID
HAVING COUNT(c.CustomerID) -1 >= 1
ORDER BY c.ContactName;
