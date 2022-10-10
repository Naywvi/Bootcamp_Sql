SELECT UPPER(customers.LastName) AS LastNameUpper, customers.FirstName FROM customers
GROUP BY customers.LastName
HAVING LENGTH(customers.FirstName) > 5 and LENGTH(customers.LastName) > 5