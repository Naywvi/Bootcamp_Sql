SELECT employees.FirstName || ' ' || Upper(employees.LastName) AS FullName ,count(customers.SupportRepId) AS NumberOfCustomers FROM employees
INNER JOIN customers ON customers.SupportRepId = employees.EmployeeId
WHERE employees.Title = 'Sales Support Agent'
GROUP BY fullname
ORDER BY NumberOfCustomers