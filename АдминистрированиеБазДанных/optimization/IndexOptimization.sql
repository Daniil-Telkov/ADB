BULK INSERT dbo.Country
FROM 'D:\DB\Countries.csv'
WITH (fieldterminator = ' ', rowterminator = '\n');

BULK INSERT dbo.City
FROM 'D:\DB\Cities.csv'
WITH (fieldterminator = ' ', rowterminator = '\n');

CREATE NONCLUSTERED INDEX FK_INDEX ON City (CC_FIPS)

SELECT city.name 
from City city , Country country
where country.COUNTRY_NAME = 'Austria' and country.CC_FIPS = city.CC_FIPS and LOWER(city.name) like 'st%'