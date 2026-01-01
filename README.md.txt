# Advanced MySQL Data Modeling and Schema Normalization

## Overview
This project was done as part of a database design task where the goal was
to understand a poorly designed legacy database and improve it using proper
normalization techniques.

## Legacy Schema Analysis
The original database had customer, product, supplier, and order information
stored together in a single table. Because of this, the same data was repeated
multiple times, which could lead to update and deletion issues.

## Normalized Design
After analyzing the legacy structure, the database was redesigned into a 3NF
schema. Separate tables were created for Customers, Suppliers, Products, and
Orders. Each table has its own primary key, and foreign keys were used to
maintain relationships between the tables.

## Data Migration
A subset of sample data was migrated from the legacy table to the new schema
using SQL INSERT and SELECT queries. This helped verify that the new structure
works correctly and maintains data integrity.

## Tools Used
- MySQL Server
- MySQL Workbench
