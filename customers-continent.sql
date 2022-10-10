SELECT FirstName, LastName, Country, 
CASE
WHEN Country IN ('USA','Argentina', 'Brazil', 'Canada', 'Chile', 'Colombia', 'Cuba', 'Dominican Republic', 'Ecuador', 'El Salvador', 'Guatemala', 'Haiti', 'Honduras', 'Jamaica', 'Mexico', 'Nicaragua', 'Panama', 'Peru', 'Puerto Rico', 'United States', 'Uruguay', 'Venezuela') THEN 'America'
WHEN Country IN ('Afghanistan', 'Bangladesh', 'Cambodia', 'China', 'Hong Kong S.A.R.', 'India', 'Indonesia', 'Japan', 'Korea', 'Korea', 'Macao S.A.R.', 'Malaysia', 'Myanmar', 'Nepal', 'Pakistan', 'Philippines', 'Singapore', 'Sri Lanka', 'Taiwan', 'Thailand', 'Vietnam') THEN 'Asia'
WHEN Country IN ('Albania', 'Andorra', 'Austria', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria', 'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland', 'France', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland', 'Italy', 'Latvia', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro', 'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden', 'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom') THEN 'Europe'
WHEN Country IN ('Australia', 'Fiji', 'New Zealand', 'Papua New Guinea') THEN 'Oceania'
END AS 'Continent'
FROM customers