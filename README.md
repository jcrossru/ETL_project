# ETL_project

                                        STOCK REPORT FOR CONSULTING COMPANY

Stock markets are some of the most important parts of today's global economy. Countries around the world depend on stock markets for economic growth.The history of stock exchange goes back a few centuries. The first stock was officially formed in London back in 1801, despite the ban on issuing shares. New York Stock Exchange (NYSE) was formed in 1817 and was a very important moment in history. Nowadays there are hundreds of stocks out there. Having the data can help us to analyze which industry is more successful. Our company Q4 goal is to determine which sectors we want to work with and what kind of clients we would like to bring onboard. In order to pick up the stock we consider to invest in and what clients we would like to bring onboard we have to determine what kind of investors we are ourselves. There are two types of investors. A follower of technical analysis is guided not by value, but by the trends, hence it can be considered as a short-term, where fundamental is thought of as a long-term strategy. We should consider both. We have decided to see which sector has the most shares, hence the most profitable. For this we found two datasets (Kaggle, NasdaQ).

Source:
Kaggle.com: 
all_stocks_5yr.csv - Stock data for 2013 - 2018

Nasdaq.com:
companylist_nasdq.csv - Listing for stocks on NASDAQ composite
companylist_nyse.csv - Listing of stocks traded in New York Stock exchange

ETL process (Run the Pipeline):
1. After downloading the Repo, run the 'create_database_objects.sql' file in the MySql workbench.
    a. Execute all
    b. Reconnect the database and confirm "stocks_db" has been added and all tables (all_stocks_5yr, companylist_nasdq, companylist_nyse, stock_final_analysis) are listed.

2. Confirm that the following python libraries are installed in your environment: sqlalchemy, pymysql, pandas
    a. if not installed in your active environment, pip install them.

3. Run jupyter notebooks from your active environment.

4. Load the following jupyter notebooks: companylist_nyse.ipynb, Load All Stocks - 5yr.ipynb, nasdaq.ipynb, industry_analysis.ipynb

5. Nasdaq.ipynb: prior to running all cells, the cell below "Create Database Connection" contains the folling code - connection_string = f"root:{db_pass}@localhost/stocks_db"

        Replace {db_pass} with the password for your MySql workbench password. do not include the {}

        A. Run all cells within Nasdaq.ipynb

6. Load All Stocks - 5yr: Within the cell with the following code - rds_connection_string = "root:121212nJ@127.0.0.1/stocks_db"
                                                                        engine = create_engine(f'mysql+pymysql://{rds_connection_string}')

                                    Replace 121212nJ with your MySql workbench password.
                                    
        Run all cells within Load All Stocks - 5yr (This might take a minute or two, as the file is large.)

    7. Companylist_nyse.ipynb: prior to running all cells, the cell below "Create Database Connection" contains the folling code - 
                                connection_string = f"root:{db_pass}@localhost/stocks_db"

                Replace {db_pass} with the password for your MySql workbench password. do not include the {}

        A. Run all cells within Companylist_nyse.ipynb

8. Refresh the database connection within the MySql workbench.

9. Run the following on each table to confirm data has been written to them:    use stocks_db;
                                                                                select * from companylist_nyse;

10. Industry Analysis.ipynb: prior to running all cells, the cell containing the folling code - 
                                                                                                connection_string = f"root:{db_pass}@localhost/stocks_db"

        Replace {db_pass} with the password for your MySql workbench password. do not include the {}

        A. Run all cells within Industry Analysis.ipynb



Transformation

We now got to our analysis project that consists of 3 parts.

                    Part 1 - Data Minging
                    
~ Read in both tables (nasdaq & nyse) from the DataBase
~ Drop unnecessary columns as well as NaN values for cleaner look
~ Save both DataFrames in a list and combine the DataFrames
~ See if there are any duplicates for Symbols, if so check if they are identical to make sure we don’t lose the data before dropping the duplicates

                    Part 2 - Uploading a new table into DataBase
                    
~ Transport the DataFrame to the Table that was already created in MySQL, by using df.to_sql
~ Save the reference to Analysis Table
~ Create a Session

                    Part 3 - Sector & Industry Analysis
                    
~ Perform session query: filter by Sector to reveal which sector has the most shares
~ Now that we know “Consumer Services” has the most shares we can filter by Industry to see specific industries to invest to and work with.



                                                  SUMMARY

According to our Analysis it appears to be that Consumer Services has the most shares, following by Health Care & Finance.
Real Estate Investment Trust has approximately 30% shares of the whole industry, investing in Real Estate and working with this Sector will bring additional Revenue to the Company.

