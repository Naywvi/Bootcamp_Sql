SELECT 
c1




from
(select country as c1, CASE

WHEN country = cemp THEN tot4
else 0
END f1
FROM
(
    SELECT country, tot  FROM 
        (SELECT Country, COUNT() tot FROM Employees
        group by country
        UNION all
        SELECT Country, COUNT() tot FROM Customers
        group by country
        UNION all
        SELECT BillingCountry AS Country, COUNT(*) FROM Invoices
        group by country)
)a,
(
    SELECT cinv as cemp, tot4  FROM 
        (SELECT country as cinv, COUNT() tot4 FROM employees
        group by cinv)
)
),

(select country as c2, CASE

WHEN country = cinv THEN tot4
else 0
END f2
FROM
(
    SELECT country, tot  FROM 
        (SELECT Country, COUNT() tot FROM Employees
        group by country
        UNION all
        SELECT Country, COUNT() tot FROM Customers
        group by country
        UNION all
        SELECT BillingCountry AS Country, COUNT(*) FROM Invoices
        group by country)
),
(
    SELECT cinv, tot4  FROM 
        (SELECT BillingCountry as cinv, COUNT() tot4 FROM invoices
        group by cinv)
)
),

(select country as c3, CASE

WHEN country = cust THEN tot4
else 0
END f3
FROM
(
    SELECT country, tot  FROM 
        (SELECT Country, COUNT() tot FROM Employees
        group by country
        UNION all
        SELECT Country, COUNT() tot FROM Customers
        group by country
        UNION all
        SELECT BillingCountry AS Country, COUNT(*) FROM Invoices
        group by country)
),
(
    SELECT cinv AS cust, tot4  FROM 
        (SELECT country as cinv, COUNT() tot4 FROM customers
        group by cinv)
)
)

