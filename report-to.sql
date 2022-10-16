SELECT  e1.EmployeeId, e1.FirstName|| ' ' ||e1.LastName  AS EmployeeName,
e2.FirstName|| ' ' ||e2.LastName  AS ReportsTo
FROM employees as e1
LEFT OUTER JOIN employees AS e2 ON e1.ReportsTo = e2.EmployeeId