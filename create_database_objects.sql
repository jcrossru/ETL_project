drop DATABASE stocks_db;


CREATE DATABASE stocks_db;

USE stocks_db;

CREATE TABLE all_stocks_5yr (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date DATE,
  open		DECIMAL(10,2),
  high		DECIMAL(10,2),
  low		DECIMAL(10,2),
  close		DECIMAL(10,2),
  volume	INT,
  Name 	VARCHAR(30) NOT NULL
  );

 
CREATE TABLE companylist_nasdq (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Symbol 	VARCHAR(30) NOT NULL,
  Name		VARCHAR(100) NOT NULL,
  LastSale	DECIMAL(28,8),
  MarketCap	DECIMAL(28,8),
  IPOyear	VARCHAR(50) NOT NULL,
  Sector	VARCHAR(50) NOT NULL,
  industry	VARCHAR(100) NOT NULL,
  SummaryQuote	VARCHAR(100) NOT NULL  );


CREATE TABLE companylist_nyse (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Symbol 	VARCHAR(30) ,
  Name		VARCHAR(100) ,
  LastSale	DECIMAL(28,8),
  MarketCap	DECIMAL(28,8),
  IPOyear	VARCHAR(50) ,
  Sector	VARCHAR(50) ,
  industry	VARCHAR(100),
  SummaryQuote	VARCHAR(100)
  );

CREATE TABLE stock_final_analysis (  
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,  
  Symbol     VARCHAR(30) NOT NULL,  
  MarketCap    DECIMAL(18,2),  
  Sector    VARCHAR(50) NOT NULL,  
  industry    VARCHAR(100) NOT NULL  );