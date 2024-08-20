# Customers Data Preparation and Enrichment

## Overview
This repository contains SQL scripts designed to prepare and enrich a customer dataset. The goal is to generate additional insights from the raw data by creating new columns that provide a more detailed understanding of customer demographics, behaviors, and segments.

## Data Source
The dataset used in these scripts is stored in a SQL Server database, within the customerss table of the Solas Summer Learncsmp database.

## Scripts Overview
### Basic Data Selection

-- SELECT TOP (1000) [...]
Selects the first 1000 rows from the customerss table, extracting key demographic information including CustomerKey, Prefix, FirstName, LastName, BirthDate, MaritalStatus, Gender, EmailAddress, AnnualIncome, TotalChildren, EducationLevel, Occupation, and HomeOwner.

### Data Enrichment

A series of SQL scripts are used to create new derived columns:

-- FullNames: Combines Prefix, FirstName, and LastName to form a full name.

-- Year: Extracts the year of birth from the BirthDate.

-- Age: Calculates the current age of the customer based on the year of birth.

-- MaritalStatusFull: Converts marital status codes (S, M) into full descriptions (Single, Married).

-- GenderFull: Converts gender codes (F, M) into full descriptions (Female, Male).

-- Parent Status: Categorizes customers based on the number of children into Parent or Non-Parent.

-- Wealth Category: Segments customers into financial categories (Wealthy, Rich, Average, Poor) based on AnnualIncome.

-- HomeOwnerFull: Converts the homeowner status into a full description (Yes, No).

-- UserName: Extracts the username portion of the EmailAddress.

## Final Data Table Creation

Script: CREATE TABLE Customerss_Prep [...]
A comprehensive SQL script that combines all the above transformations and stores the enriched data into a new table Customerss_Prep.

## To use these scripts:

Data Selection: Use the initial selection script to understand the structure of the raw data.

Run Enrichment Scripts: Apply each script in sequence to enrich the data with new insights.

Final Table Creation: Use the final script to generate a fully-prepared dataset stored in the Customerss_Prep table.

## Prerequisites

SQL Server or a compatible database system.

Access to the Solas Summer Learncsmp database.

## How to Run
Open SQL Server Management Studio (SSMS) or your preferred SQL client.
Connect to your database.
Execute the scripts in the order provided.

## Contributions
Contributions to this repository are welcome. Please open an issue or submit a pull request with your improvements or suggestions.
