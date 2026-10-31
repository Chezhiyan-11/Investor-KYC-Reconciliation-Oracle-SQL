# Investor-KYC-Reconciliation-Oracle-SQL
Oracle SQL-based investor KYC reconciliation, holder-level validation and exception management.
Business Context

In mutual fund operations, investor KYC information must be validated across multiple holder segments to ensure accurate investor records and regulatory compliance.

The reconciliation process involves reviewing investor and folio-level information, identifying KYC status discrepancies, validating holder details, and supporting corrections through established operational workflows.

My Project Experience

Based on my professional experience in mutual fund KYC operations, this project represents a SQL-based demonstration of the reconciliation and validation activities involved in investor record management.

The workflow covers:

* Extracting investor and folio-level records using Oracle SQL.
* Validating information across four holder segments.
* Applying investor classification-based validation conditions.
* Comparing internal KYC information with available KRA status information.
* Identifying missing, mismatched, and inconsistent records.
* Supporting exception identification and reconciliation.

Holder-Level Validation Logic

The validation process considers four holder segments:

1. Primary Holder
2. Joint Holder 1
3. Joint Holder 2
4. Guardian

Different validation conditions are applied depending on investor classification and holder type.

Reconciliation Approach

The demonstration represents a typical reconciliation workflow:

Internal Records → SQL Extraction → Holder-Level Validation → KRA Status Comparison → Exception Identification → Reconciliation Support

Professional Relevance

This project demonstrates practical knowledge relevant to:

* KYC Operations
* Investor Onboarding
* KYC Remediation
* Data Quality and Reconciliation
* Oracle SQL Reporting
* Risk and Compliance Operations