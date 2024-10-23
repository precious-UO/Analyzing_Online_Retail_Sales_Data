-- Create database
CREATE DATABASE IF NOT EXISTS online_retail;

-- Use database
USE online_retail;

-- DATA CLEANING 

-- Find and remove letters from integer values
-- --------------------------------- InvoiceNo column ----------------------------------------------------------
SELECT COUNT(InvoiceNO)
FROM onlineretail
WHERE InvoiceNo REGEXP '[A-Za-z]';

SELECT InvoiceNo, CustomerID
FROM onlineretail
WHERE InvoiceNo REGEXP '[A-Za-z]';

UPDATE onlineretail
SET InvoiceNo = REGEXP_REPLACE(InvoiceNo, '^[A-Za-z]+', '')
WHERE InvoiceNo REGEXP '^[A-Za-z]+[0-9]';

-- ------------------------------- StockCode Column -------------------------------------------------------------
SELECT COUNT(StockCode) AS Num_of_rows_with_letters
FROM onlineretail
WHERE StockCode REGEXP '[A-Za-z]';

SELECT StockCode, CustomerID
FROM onlineretail
WHERE StockCode REGEXP '[A-Za-z]';

UPDATE onlineretail
SET StockCode = REGEXP_REPLACE(StockCode, '[A-Za-z]+$', '')
WHERE StockCode REGEXP '[0-9]+[A-Za-z]+$';


-- ------------------------------------ CustomerID column -----------------------------------------------------
SELECT InvoiceNo, StockCode, CustomerID
FROM onlineretail
WHERE CustomerID IS NULL OR CustomerID = '' OR CustomerID NOT REGEXP '^[0-9]+$';

UPDATE onlineretail
SET CustomerID = 0
WHERE CustomerID IS NULL OR CustomerID = ' ' OR CustomerID  NOT REGEXP '^[0-9]+$';

-- -------------------------- REMOVE CURRENCY SIGN FROM UnitPrice -------------------------------------------------
UPDATE onlineretail
SET UnitPrice = REPLACE(UnitPrice, '$', '')
WHERE UnitPrice LIKE '$%';

-- ----------------------------- MODIFY COLUMN DATA TYPES ---------------------------------------------------------
DESC onlineretail;
ALTER TABLE onlineretail MODIFY Quantity INT;
ALTER TABLE onlineretail MODIFY InvoiceDate DATETIME;
ALTER TABLE onlineretail MODIFY CustomerID INT;
ALTER TABLE onlineretail MODIFY UnitPrice DECIMAL(10,2);
ALTER TABLE onlineretail MODIFY StockCode INT;
DESC onlineretail;


-- ------------------------------ Modify Empty, Null and 0 cells --------------------------------------------------

-- ------ Modify Empty, Null and 0 cells in StockCode column

SELECT InvoiceNo, StockCode
FROM onlineretail
WHERE StockCode IS NULL OR StockCode = ' ' OR StockCode = 0;

UPDATE onlineretail
SET StockCode = 001
WHERE StockCode IS NULL OR StockCode = ' ' OR StockCode = 0;

SELECT InvoiceNo, StockCode
FROM onlineretail
WHERE StockCode = 001;

-- ----- Modify Empty, Null and 0 cells in Quantity column
SELECT InvoiceNo, StockCode, Quantity
FROM onlineretail
WHERE Quantity IS NULL OR Quantity = '' OR Quantity <= 0;

SELECT COUNT(Description)
FROM onlineretail
WHERE Quantity IS NULL OR Quantity = '' OR Quantity <= 0;

UPDATE onlineretail
SET Quantity = ABS(Quantity)
WHERE Quantity < 0;


