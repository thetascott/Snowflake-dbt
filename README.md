# dbt Snowflake Data Warehouse Project

Welcome to the **dbt Snowflake Data Warehouse Project** repository!  
This project demonstrates a modern ELT data pipeline using dbt and Snowflake, following industry best practices in data engineering and analytics. 

---

## Data Architecture

This project follows the **Medallion Architecture** pattern: **Staging (Silver)** and **Marts (Gold)** layers:

1. **Staging (Silver) Layer**:  
   - Cleanses, standardizes, and normalizes raw data stored in the `public` schema.  
   - Implemented as **dbt views** based on raw tables from ERP and CRM systems.

2. **Marts (Gold) Layer**:  
   - Business-ready tables for analytics and reporting.  
   - Implements a **star schema** with dimension and fact tables.  
   - Materialized as **dbt tables** for optimized query performance.

![High-Level Architecture](Docs/High%20Level%20Architecture.png)

---

## Project Overview

This project involves:

1. **Data Architecture**: Building a modern data warehouse with Silver (staging) and Gold (marts) layers.  
2. **ELT Pipelines**: Transforming raw data in Snowflake using dbt models.  
3. **Data Modeling**: Creating dimension and fact tables suitable for analytical queries.  
4. **CI/CD Automation**: Ready for orchestration with Airflow (via Cosmos) for scheduled ELT runs.  
5. **Documentation and Testing**: dbt-generated documentation and optional tests for data quality (unique keys, not null constraints).

---

## Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern ELT pipeline in Snowflake to consolidate ERP and CRM data into a business-ready warehouse.

#### Specifications
- **Data Sources**: Raw tables from ERP and CRM systems, loaded into Snowflake `public` schema.  
- **Data Quality**: Transformations include trimming, normalization, surrogate keys, and derived columns.  
- **Integration**: Combine sources into Silver staging views and Gold marts tables.  
- **Scope**: Focus on the latest dataset; historical tracking handled via surrogate keys.  
- **Documentation**: dbt generates model documentation and DAG for lineage.

---

## Repository Structure
```
dbt_snowflake_project/
│
├── Datasets/                       # Raw datasets (ERP and CRM tables)
│
├── Docs/                           # Project documentation and architecture diagrams
│   ├── High Level Architecture.png # Overview of Silver/Gold layers
│   ├── data_catalog.md             # Catalog of datasets and columns
│   ├── Data Flow.png               # Data flow diagram
│   ├── Data Model.png              # Star schema diagram
│   ├── naming-conventions.md       # Consistent naming guidelines for tables and columns
│
├── models/                         # dbt models
│   ├── staging/                     # Silver layer views
│   └── marts/                       # Gold layer tables (dimensions and facts)
│
├── Tests/                          # dbt tests or SQL quality checks
│
├── README.md                        # Project overview and instructions
├── LICENSE                          # License information
```
