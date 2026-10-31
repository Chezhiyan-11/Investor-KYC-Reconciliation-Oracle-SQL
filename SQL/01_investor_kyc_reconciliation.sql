WITH investor_data AS (
SELECT 1001 AS folio_no, ‘RAHUL’ AS holder_name,
‘VALIDATED’ AS kyc_status, ‘01’ AS holder_type
FROM dual
UNION ALL
SELECT 1002, ‘PRIYA’, ‘PENDING’, ‘02’ FROM dual
UNION ALL
SELECT 1003, ‘ARUN’, ‘NOT_UPDATED’, ‘26’ FROM dual
UNION ALL
SELECT 1004, ‘KUMAR’, ‘REJECTED’, ‘28’ FROM dual
)

– KYC status classification
SELECT
folio_no,
holder_name,
holder_type,
kyc_status,
CASE
WHEN kyc_status = ‘VALIDATED’ THEN ‘KYC COMPLETED’
WHEN kyc_status = ‘PENDING’ THEN ‘UNDER PROCESS’
WHEN kyc_status = ‘NOT_UPDATED’ THEN ‘KYC REQUIRED’
WHEN kyc_status = ‘REJECTED’ THEN ‘EXCEPTION’
ELSE ‘REVIEW REQUIRED’
END AS validation_result
FROM investor_data
ORDER BY folio_no;