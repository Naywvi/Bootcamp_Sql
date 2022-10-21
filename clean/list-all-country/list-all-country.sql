SELECT country, sum(tot) as Total FROM 
(SELECT Country, COUNT() tot FROM Employees
group by country
UNION all
SELECT Country, COUNT() tot FROM Customers
group by country
UNION all
SELECT BillingCountry AS Country, COUNT(*)  FROM Invoices
group by country
)
group by country
