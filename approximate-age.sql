SELECT FirstName, LastName, (HireDate - BirthDate) AS ApproximateAge FROM employees 
ORDER BY ApproximateAge