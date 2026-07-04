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
