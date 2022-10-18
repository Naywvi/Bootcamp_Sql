SELECT tem.Country, COUNT(*) AS 'Total', 
    IFNULL((
    SELECT COUNT(*) FROM employees
    WHERE "Country" = tem.Country
    GROUP BY "Country"
    ), 0) AS 'Employees',
    IFNULL((
    SELECT COUNT(*) FROM customers
    WHERE "Country" = tem.Country
    GROUP BY "Country"
    ), 0) AS 'Customers',
    IFNULL((
    SELECT COUNT(*) FROM invoices
    WHERE "BillingCountry" = tem.Country
    GROUP BY "BillingCountry"
    ), 0) AS 'Invoices'
FROM (
  SELECT "Country" FROM employees
  UNION ALL
  SELECT "Country" FROM customers
  UNION ALL
  SELECT "BillingCountry" FROM invoices
) AS tem
GROUP BY Country
ORDER BY Country