SELECT
    Transaction_ID,
    COUNT(*) AS duplicate_count
FROM bank_transactions
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;
