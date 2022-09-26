# Project---Adventure-Works-2019
A study on Adventure Works 2019 relational database.
In this project SQL is used for Data cleaning and Data manipulation. Python PandaS, Matplotlib for Data Visualization. SQL SSMS for Data Transformation. We were given task to find answers for the following questions related to Adventure Works database.

### Question 1 :  What is the regional sales in the best performing country 

Firstly, we need to find the data of sales per country in the Sales.SalesTerritory table, Sales YTD, Sales Last Year columns and define the highest performing country by SQL using SUM(), MAX() and GROUP BY function. Create a view for that. 
Secondly, calculate the sales by regions of the highest performing country in SQL using SUM(), GROUP BY() and WHERE. At this step, we have the table we needed. Create a view for this. Called Regional_Sales
Thirdly, import the Regional_Sales table to Jupiper Note using pyodbc and create a DataFrame. Importing other libraries including pandas, matplotlib, pyplot, numpy, and json for further use.
To visualise the data, we’ll go with bar chart (Matplotlib) to show the total sales of each region and compare the value of sales YTD and last year. This could be done using Matplotlib. The chart helps show the differences between the two years but can’t see the YOY and percentage.
We’ll then use double pie charts to plot the dataset into two separate pies/donuts that contain the percentage of each year and the pies’ size also illustrate the scale of sales each year. To make the visual look good and interactive, we could us pyplot that offer the flexibility.
![Q1  RegSales_DPieChart_Megan](https://user-images.githubusercontent.com/113377587/192269489-38a8384c-2cce-4618-bd9f-929ddad458f1.png)
![Q1 Regional_Sales_Double_Bar_Chart_Megan_bo](https://user-images.githubusercontent.com/113377587/192269595-a6551349-3c58-4825-a459-448ce82d7d43.png)

### Question 2 :What is the relationship between annual leave taken and bonus?

First step is to find  the tables in Adventure works database  which has annual leave(VacationHours) and Bonus columns.
The 2 identified tables are HumanResources.Employee and Sales.SalesPerson. 
INNER JOIN them on the common column BusinessEntityID.
Save the query Creating View and import the data to python using Jupiter Notebook.
To visualise the data and find the relationship between them, we will use scatter plot ( Matplotlib) 
![Annual leave vs Bonus](https://user-images.githubusercontent.com/113377587/192269737-be78d5cf-f7af-4cab-a5d9-82a380946966.png)

### Question 3 : What is the relationship between Country and Revenue?

Get the table Sales.SalesTerritory which relates country and revenue.
Get the columns needed CountryRegionCode,SalesLastYear,SalesYTD
Calculate total sales by country using functions SUM(),GROUP BY and alias total sales using AS in SQL.
Save the query using VIEW in SQL.
To visualise the data,connect SQL server in Visual Studio Code.Create dataframe from the saved query.
Import the libraries matplotlib,pandas,numpy.Create a dataframe for SQL query.Add new column CountryName to the dataframe.
Plot by horizontal bar graph which compares the sales data for last year and current year.
For further understanding plot pie chart forSales last Yar and SalesYTD using corresponding codes in visual studio code.
![Q3CountryVsRevenue_Lakshmi](https://user-images.githubusercontent.com/113377587/192269863-b4216f7e-3d94-43c5-86d6-fddf498be628.PNG)
![Q3CountryVsSalesYTD_lakshmi (1)](https://user-images.githubusercontent.com/113377587/192270026-f4b6c4a7-c665-4f46-adfc-e17d091cc486.png)
![Q3CountryVsSalesYTD_lakshmi1](https://user-images.githubusercontent.com/113377587/192270096-d1e3baaa-0f14-49f9-a856-7e91ebd7eebb.png)

### Question 4 : What is the relationship between sick leave and Job Title?

Get the table HumanResources.Employee
I will have two queries.
Firstly, get two columns JobTitle and SickLeaveHours
Use aggregate function (AVG) to calculate average sick leave hours for each job title
Group them by JobTitle 
Secondly, get three columns JobTitle, SickLeaveHours and OrganizationLevel, the same as in first query use AVG function to calculate average sick leave hours
Save the queries
Create view for both of them
Create new file in JupyterNotebook and import view from SQL Server
Import libraries - matplotlib, pandas, numpy, seaborn
With first query, I visualise relationship between job titles and sick leave hours with scatter plots and bar plot (Matplotlib)
With the second query, I visualise the relationship between job titles, sick leave hours and organisation level. I will do this with scatter plots in Matplotlib (x2)
![Q4 Visual1 Dagmara](https://user-images.githubusercontent.com/113377587/192270282-0e2c128e-3dcb-4d96-81e0-13e6e3c8f02e.png)
![Q4 Visual2 Dagmara](https://user-images.githubusercontent.com/113377587/192270332-d715548a-b1cf-4ed7-b76a-44cbf10e7274.png)
![Q4 Visual3 Dagmara](https://user-images.githubusercontent.com/113377587/192270399-8e2c4163-f477-473a-92c1-abb58f254635.png)
![Q4 Visual4 Dagmara](https://user-images.githubusercontent.com/113377587/192270461-ae261e59-7db3-4bf4-a877-1264d7798a9d.png)

### Question 5 : What is the relationship between store trading duration and revenue?

#### Part 1: Using all the data for trading duration and annual revenue
In AdventureWorks2019 find the data that we need to work with : trading duration and annual  revenue
Write SQL code to get data frame we need. GROUP BY year opened, use AVG() for the Annual Revenue for each year group, create a new column trading_duration by subtracting year opened from 2014 ( as 2014 is current year for the database). The tables columns are :year_opened, trading_duration, avr_rev.
Create a view duration_vs_rev
In Visual Code Studio import pyodbc, matplotlib.pyplot, pandas, numpy and seaborn.
Import the view to Visual Code Studio
Create a graph using matplotlib - the choice of  a scatter plot is defined by the task to find the relationship between two numerical sets of data.
Run corr() function to verify conclusion made on the base of the scatter plot
#### Part 2:	 Using data on the shops grouped by specialty to see if there is a trend
 Analyse the relation between store trading duration and revenue for 3 different specialties of stores (Road, Mountain, Touring) to see if there is a relation within each group.
Determine the number of specialties using distinct(Speciality) in SQL. There are 3 types. Use similar steps as above with appropriate functions to create views for the three and present information on scatter plots in Visual Code Studio using seaborn
#### Part 3:	Using data on shops with specific specialty (road) and similar in size 
Analyse the relation between the store  trading duration and the range of annual revenue for shops of one type specialty and similar size.
Get the data from AdventureWorks on stores in Specialty (Road), Size (floor area between 15333  sq.ft and 20000 sq. ft., group by year opened, duration open, find Max() and Min() of Annual Rev, hence find the range of the Annual Rev. Create a view.
Import  the view to Visual Code Studio and create a chart using seaborn. 
![Slide1](https://user-images.githubusercontent.com/113377587/192270594-1a37012b-2b43-4475-9cfc-a328c3a58e31.png)
![Slide2 1G](https://user-images.githubusercontent.com/113377587/192270653-d5f177f3-2c9d-4fc0-bc38-5aa6f69c5f15.png)
![Slide2 2G](https://user-images.githubusercontent.com/113377587/192270715-9a2e3004-b4b8-47a4-875d-ba0972217122.png)
![Slide2 3G](https://user-images.githubusercontent.com/113377587/192270758-1756ca3a-4c79-460f-8bcb-f17fc6185722.png)
![Slide3 1G](https://user-images.githubusercontent.com/113377587/192270810-93e4625a-a5a4-468a-899e-a2465efa8068.png)

### Question 6 : What is the relationship between the size of the stores, number of employees and revenue?

Get the table vstoreWithDemographics
Locate the columns store size the corresponding number of employees and revenue
Order them by Store Size
Save the query using view
Open Visual Code Studio. Import pyodbc, matplotlib.pyplot, pandas, numpy and datetime
Create  a graph with Store Size on the x-axis and two y-axis consisting of number of employees and revenue. 
Decided that a Bubble Chart would be the best option. 
Managed to build three scatter plots showing. These included Size of store against Number of Employees, Size of Store against Annual Revenue and Number of Employees against Annual Revenue.
Researched the possibility of using Seaborn to build the visual graphs.
Attempted to build scatter and bubble plot with three variables using twin axes
![GlenSullivanFinalVisual1](https://user-images.githubusercontent.com/113377587/192270918-731b3f32-9322-43b0-9cbd-75b8456cb1d8.png)
![GlenSullivanFinalVisual2](https://user-images.githubusercontent.com/113377587/192270958-b68a7116-241d-4b9e-8de5-af6c4c15ea97.png)
![output_GlenSullivan](https://user-images.githubusercontent.com/113377587/192271011-154ffc0e-fbf9-4bbb-9aee-c2240fcabf71.png)
![output-GlenSullivan](https://user-images.githubusercontent.com/113377587/192271076-f2560d58-b7aa-4b9d-b5c1-5c1406dc2714.png)
![output2_GlenSullivan](https://user-images.githubusercontent.com/113377587/192271123-13df2132-06b5-405e-b76a-b4ded9462552.png)
![output3_GlenSullivan](https://user-images.githubusercontent.com/113377587/192271181-ec05eff9-acbb-4bf2-aefb-3f6cb177bfba.png)
![output4_Glen_Sullivan](https://user-images.githubusercontent.com/113377587/192271230-571da0bd-1c5a-4d2a-a40b-76b353bb936f.png)
![output5_GlenSullivan](https://user-images.githubusercontent.com/113377587/192271303-8db1f6a8-8e4f-4397-b7ab-d50d5a856a8c.png)

### Libraries used in the whole project:
Pyodbc
Pandas
Matplotlib
Plotly
Numpy
Seaborn


