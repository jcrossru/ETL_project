# ETL_project

Stock Report for Consulting CompanyStock markets are some of the most important parts of today’s global economy. Countries around the world depend on stock markets for economic growth.The history of stock exchange goes back a few centuries. The first stock was officially formed in London back in 1801, despite the ban on issuing shares. New York Stock Exchange (NYSE) was formed in 1817 and was a very important moment in history.Nowadays there are hundreds of stocks out there. Having the data can help us to analyze which industry is more successful and which industry we should stay away from.Our company Q4 goal is to determine which sectors we want to work with and what kind of clients we would like to bring onboard.In order to pick up the stock we consider to invest in and what clients we would like to bring onboard we have to determine what kind of investors we are ourselves. There are two types of investors. A follower of technical analysis is guided not by value, but by the trends, hence it can be considered as a short-term, where fundamental is thought of as a long-term strategy. We should consider both.We have decided to see which stocks have fall out of market throughout the years (specify years) and which ones were fairly stable. For this we found two datasets (Kaggle, NasdaQ).~~~ Divide by industries at the end.~~~ Conclusion.

Source:
Kaggle.com: 
all_stocks_5yr.csv - Stock data for 2013 - 2018

Nasdaq.com:
companylist_nasdq.csv - Listing for stocks on NASDAQ composite
companylist_nyse.csv - Listing of stocks traded in New York Stock exchange

ETL process:
1. Create tables to load all_stocks_5yr.csv, companylist_nasdq.csv, companylist_nyse.csv, comparison results. (SQL - Jeanette)
2. Load all_stocks_5yr.csv (Jupyter notebook - Asher)
3. Load companylist_nasdq.csv (Jupyter notebook - Monika) 
4. Load companylist_nyse.csv (Jupyter notebook - Jeanette)
5. Compare data and load result table. (SQL - Sonya) 

ETL Process:

1.  Open mysql and connect to local host.
2.  Execute create_database_objects.sql to create database objects
3.  Open git bash and activate python envinment.
4.  pip install pymysql.
