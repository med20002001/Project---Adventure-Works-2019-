-- Question 1 - What is the regional sales in the best performing country
ALTER VIEW region_sales_US AS
SELECT Name as region, SUM(SalesYTD) Sales_YTD, SUM(SalesLastYear) Sales_LastYear
FROM sales.SalesTerritory
WHERE CountryRegionCode IN (SELECT country_code FROM top_performing_country)
GROUP BY Name

-- 
CREATE VIEW top_performing_country AS
SELECT top 1
	CountryRegionCode as country_code,
	SUM(SalesYTD) AS country_sales
FROM Sales.SalesTerritory
GROUP BY CountryRegionCode
ORDER BY country_sales DESC

-- Question 2 – What is the relationship between Annual leave and Bonus?
CREATE VIEW v_sales_vacationhours_bonus AS
 SELECT E.OrganizationLevel, E.JobTitle, E.VacationHours, S.Bonus
FROM HumanResources.Employee AS E
INNER JOIN Sales.SalesPerson AS S
ON E.BusinessEntityID = S.BusinessEntityID ;

-- Question 3 - What is the relationship between Country and Revenue? 
-- CountryVsRevenue SQL Query
CREATE VIEW CountryVsRevenue AS
(
SELECT CountryRegionCode,SUM(SalesLastYear) AS TotalSalesLastYear, SUM(SalesYTD) AS TotalSalesYTD
FROM Sales.SalesTerritory
GROUP BY CountryRegionCode
)

-- Question 4 - What is the relationship between sick leave and Job Title?
SELECT E.JobTitle, AVG(E.SickLeaveHours) As Avg_SickLeaveHours
FROM HumanResources.Employee AS E
GROUP BY JobTitle;

create view employeesickleaveview as
SELECT E.JobTitle, AVG(E.SickLeaveHours) As Avg_SickLeaveHours
FROM HumanResources.Employee AS E
GROUP BY JobTitle;

create view employeesickleaveview2 as
SELECT E.JobTitle, E.OrganizationLevel, AVG(E.SickLeaveHours) As Avg_SickLeaveHours
FROM HumanResources.Employee AS E
GROUP BY JobTitle, OrganizationLevel;

SELECT E.JobTitle, E.OrganizationLevel, AVG(E.SickLeaveHours) As Avg_SickLeaveHours
FROM HumanResources.Employee AS E
GROUP BY JobTitle, OrganizationLevel
ORDER BY OrganizationLevel;

-- Question 5 - What is the relationship between store trading duration and revenue? 
CREATE VIEW duration_v_rev as

SELECT  s.YearOpened, AVG(s.AnnualRevenue) as avg_rev
FROM Sales.vStoreWithDemographics as s
GROUP  BY s.YearOpened

CREATE VIEW mountain1S as
SELECT s.YearOpened, AVG(s.AnnualRevenue) as avg_rev, COUNT(s.YearOpened) as number_shops
FROM Sales.vStoreWithDemographics as s
Where s.Specialty='Mountain'
GROUP BY s.YearOpened

CREATE VIEW ranger1 as
SELECT s.YearOpened,2014- s.YearOpened as Trading_Duration,  MAX(s.AnnualRevenue) as max_rev,
MIN(s.AnnualRevenue) as min_rev, MAX(s.AnnualRevenue)-MIN(s.AnnualRevenue) as range
FROM Sales.vStoreWithDemographics as s
WHERE (s.Specialty='Road' AND s.SquareFeet >15333 )
GROUP BY s.YearOpened

CREATE VIEW touring1S as
SELECT s.YearOpened, AVG(s.AnnualRevenue) as avg_rev, COUNT(s.YearOpened) as number_shops
FROM Sales.vStoreWithDemographics as s
Where s.Specialty='Touring'
GROUP BY s.YearOpened

-- Question 6 -What is the relationship between the size of the stores, number of employees and revenue?
/**Find the size of store, number of employees and revenue***/
SELECT S.Name, S.SquareFeet AS Size, S.NumberEmployees, S.AnnualRevenue
FROM Sales.vStoreWithDemographics as S
ORDER BY Size;

Create view testview7 as
SELECT S.Name, S.SquareFeet AS Size, S.NumberEmployees, S.AnnualRevenue
FROM Sales.vStoreWithDemographics as S

