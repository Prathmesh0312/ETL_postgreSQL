# **ETL & Data Warehousing Project – Fudgemart (PostgreSQL + dbt)**

## Overview

This project demonstrates an end-to-end ELT (Extract, Load, Transform) pipeline for a fictional retail business, Fudgemart.
The goal is to design a production-aligned data warehouse using modern analytics engineering practices.

The pipeline ingests raw data from CSV files, loads it into a PostgreSQL warehouse, and applies SQL-based transformations using dbt Core to produce analytics-ready dimension, fact, and mart tables.

Architecture
Source CSVs
   ↓
Raw Tables (PostgreSQL)
   ↓
dbt Dimensions
   ↓
Fact Tables
   ↓
Analytics Mart Schema
This layered approach ensures clean separation between raw data, transformations, and reporting-ready datasets.


## Tech Stack

PostgreSQL – Analytical data warehouse

dbt Core – SQL-based transformations and modeling

Python – Data generation and CSV handling

GitHub – Version control and project management

Power BI – Business intelligence and visualization (planned / external)

## Data Pipeline Workflow
### 1️. Data Extraction

Source data is provided as CSV files representing:

Customers

Products

Orders

Order Details

Reviews

Date Dimension
### 2️. Data Loading

CSV files are loaded into PostgreSQL raw tables

The raw schema stores source-level, untransformed data

### 3️. Data Transformation (dbt)

Using dbt Core, SQL models are applied to:

Clean and standardize raw data

Generate surrogate keys

Create dimension tables

Build fact tables with defined grain

Produce mart-level analytics models

All transformations are written as SQL models and executed inside PostgreSQL.

### 4️. Analytics-Ready Layer

The final mart schema is optimized for:

BI tools

Analytical queries

Business reporting

## Key Features:

Warehouse-agnostic ELT design

SQL-first transformation logic

dbt sources, models, and tests

Dimensional modeling (star schema)

Reproducible and version-controlled pipeline

## How to Run Locally:

Prerequisites:

PostgreSQL

Python 3.9+

dbt Core (Postgres adapter)

Install dbt: pip install dbt-postgres

Verify setup: dbt debug

Load seed data: dbt seed

Run transformations: dbt run

Run tests: dbt test

## Future Enhancements:

CI/CD with GitHub Actions

Incremental models

Airflow orchestration

Power BI dashboards

dbt documentation site
