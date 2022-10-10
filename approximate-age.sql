SELECT employees.FirstName, employees.LastName, SUBSTR(strftime('%Y' ,employees.BirthDate ) - strftime('%Y' ,employees.HireDate ),2) AS ApproximateAge FROM employees
ORDER BY ApproximateAge