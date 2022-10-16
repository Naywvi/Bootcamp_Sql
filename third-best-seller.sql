SELECT
CASE
WHEN count(customers.FirstName) = 18 THEN emp.LastName || ' ' || emp.FirstName
END as '3rd best seller'
FROM employees as emp
INNER JOIN customers ON customers.SupportRepId = emp.EmployeeId
where emp.BirthDate = '1965-03-03 00:00:00'
GROUP BY emp.LastName