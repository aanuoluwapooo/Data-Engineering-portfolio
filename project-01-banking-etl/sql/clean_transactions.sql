SELECT
    Transaction_ID,
    COUNT(*) AS duplicate_count
FROM bank_transactions
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;
-- Find transactions with missing customer IDs

SELECT *
FROM bank_transactions
WHERE Customer_ID IS NULL;
-- Find transactions with negative amounts

SELECT *
FROM bank_transactions
WHERE Amount < 0;


-- Find cancelled transactions

SELECT *
FROM bank_transactions
WHERE Status = 'Cancelled';
-- Return valid transactions

SELECT *
FROM bank_transactions
WHERE Customer_ID IS NOT NULL
  AND Amount > 0
  AND Status = 'Completed';
