– Project: Investor KYC Reconciliation
– Script: Holder-Level KYC Validation
– Database: Oracle SQL
– Purpose: Demonstrate validation across four investor holder segments.
– Note: All records and PAN values are fictional.

WITH investor_holders AS (
SELECT 1001 AS folio_no, ‘01’ AS investor_type,
‘RAHUL’ AS holder_name, ‘ABCDE1234F’ AS pan,
‘PRIMARY’ AS holder_segment
FROM dual

UNION ALL
SELECT 1002, '02', 'PRIYA', 'FGHIJ5678K', 'GUARDIAN'
FROM dual
UNION ALL
SELECT 1003, '26', 'ARUN', 'KLMNO1234P', 'NRI_GUARDIAN'
FROM dual
UNION ALL
SELECT 1004, '28', 'KUMAR', 'PQRST5678U', 'NRI_GUARDIAN'
FROM dual

),

kyc_validation AS (
SELECT
folio_no,
investor_type,
holder_name,
pan,
holder_segment,
CASE
WHEN pan IS NULL THEN ‘MISSING PAN’
WHEN NOT REGEXP_LIKE(
pan,
‘^[A-Z]{5}[0-9]{4}[A-Z]$’
) THEN ‘INVALID PAN FORMAT’
ELSE ‘FORMAT VALID’
END AS validation_result
FROM investor_holders
)

SELECT
folio_no,
investor_type,
holder_name,
holder_segment,
validation_result
FROM kyc_validation
ORDER BY folio_no;

– Key concepts:
– 1. Four holder-segment representation.
– 2. Investor classification-based validation.
– 3. REGEXP_LIKE for PAN format checking.
– 4. CASE statements for exception identification.
– 5. CTEs for structured SQL processing.