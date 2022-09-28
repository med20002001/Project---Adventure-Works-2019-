# Importing the required libaries

import pyodbc
import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.pyplot as plt; plt.rcdefaults()
import numpy as np

# Setting up a connection to my SQL Server instance and database. Here this is a *Trusted Connection* and does not require login details
# Don't forget to replace *LAPTOP-VGURO3ML\SERVER1* with your database instance server name, and to ensure your database is running
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=DESKTOP-SF0773P;'
                      'Database=AdventureWorks2019;'
                      'Trusted_Connection=yes;')    

 #importing data from sql to python
 df = pd.read_sql_query('SELECT* FROM v_sales_vacationhours_bonus ', conn)

#  Scatter Plot VacationHours vs Bonus
df.plot.scatter(x = 'VacationHours', y = 'Bonus', color = 'orange' ,linestyle = '--', title = 'Sales - Vacation_Hrs/Bonus')



