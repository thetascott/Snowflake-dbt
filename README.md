# Automated ELT with Snowflake, dbt, and Airflow

Welcome to the **Snowflake Data Warehouse Project** repository!  
This project demonstrates a modern ELT data pipeline using dbt and Snowflake, following industry best practices in data engineering and analytics. 

---

## Data Model Architecture

This project follows a two-layer dbt modeling structure:

- **Staging Layer**  
  Cleanses, renames, and standardizes raw source data from ERP and CRM tables in the `public` schema.  
  Implemented as **dbt views** to preserve the latest source data.

- **Marts Layer**  
  Builds business-ready analytical models using a **star schema** design with fact and dimension tables.  
  Materialized as **dbt tables** for optimized query performance in analytics and reporting.

---

## Project Overview

This project involves:

1. **Data Architecture**: Building a modern data warehouse with Silver (staging) and Gold (marts) layers.  
2. **ELT Pipelines**: Transforming raw data in Snowflake using dbt models.  
3. **Data Modeling**: Creating dimension and fact tables suitable for analytical queries.  
4. **Workflow Orchestration**: Integrated with Apache Airflow (via Cosmos) to automate and schedule ELT pipelines, ensuring reliable and repeatable dbt model execution.
5. **Documentation and Testing**: dbt-generated documentation and optional tests for data quality (unique keys, not null constraints).

---

## Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective
Develop a modern ELT pipeline in Snowflake to consolidate ERP and CRM data into a business-ready warehouse.

#### Specifications
- **Data Sources**: Raw tables from ERP and CRM systems, loaded into Snowflake `public` schema.  
- **Data Quality**: Transformations include trimming, normalization, surrogate keys, and derived columns.  
- **Integration**: Combine sources into staging views and marts tables.   
- **Documentation**: dbt generates model documentation and DAG for lineage.

---

## Repository Structure
```
dbt_snowflake_project/
│
├── Datasets/                       # Raw datasets (ERP and CRM tables)
│
├── Docs/                           # Project documentation and architecture diagrams
│   ├── data_catalog.md             # Catalog of datasets and columns
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
