# E-commerce Data Modernization with Snowflake 🚀

## Overview
An e-commerce company operating across 15 countries with over 5 million active customers and having a catalog of more than 100,000 products. This project aims to implement a modern data engineering solution using Snowflake to address various challenges related to data volume, processing, and analytics.
A hands-on deep dive into building a robust data pipeline using Snowflake, focusing on a real-world project case study. To learn how to transform a data lake into a sophisticated Snowflake-based solution, covering the entire data lifecycle from ingestion to analytics-ready datasets. Discovering how an end-to-end project works in Snowflake and how to implement the three-layer medallion architecture—bronze, silver, and gold.

### Goals
- **Centralize Data** 🌐: Create a unified view of business data.
- **Real-time Analytics** ⏱️: Reduce processing time from 24 hours to 1 hour.
- **Scalability** 📈: Enhance the infrastructure to handle 5x the current data volume.
- **Data Quality** ✔️: Implement robust data quality checks.
- **Advanced Analytics** 🔍: Lay the foundation for future machine learning models and self-service analytics.

## Architecture

### Data Flow
1. **Source Systems** 📦: Customer Relationship Management, Inventory Management, and E-commerce Platforms.
2. **Azure Data Lake Storage (ADLS)** 🏞️: Centralized raw data storage, acting as a staging area before loading into Snowflake.
3. **Snowflake Data Warehouse** ❄️:
   - **Layer 1(Bronze)**: Raw data ingestion.
   - **Layer 2(Silver)**: Data cleaning and transformation.
   - **Layer 3(Gold)**: Business-level aggregates for analytics.
4. **BI Tools** 📊: Reporting and analytics.

### Features of Snowflake Used
- **External Stages** 📡: Connect to ADLS for data ingestion.
- **Copy Commands** 📋: Efficient data loading into Snowflake.
- **Tasks** 🔄: Automate data loading and transformation workflows.
- **Streams** 🌊: Capture and process incremental data updates.
- **Time Travel and Zero Copy Cloning** ⏳: Support data recovery, historical analysis, and efficient environment provisioning.

## Technologies Used
- **Azure Data Lake Storage (ADLS)** 🗃️: Data storage and management.
- **Snowflake** ❄️: Data warehousing and analytics.
- **BI Tools** 📈: Business intelligence and reporting.

## Setup Instructions

### Prerequisites
- Azure account with access to ADLS.
- Snowflake account.

### Configuration
1. **Set up ADLS** 🛠️:
   - Ensure that data from CRM, Inventory Management, and E-commerce platforms are routed to ADLS. Since we do not have a source system, load CSV files to the Azure container manually.
   
2. **Snowflake Setup** ⚙️:
   - Configure external stages to connect with ADLS.
   - Define tasks for regular data ingestion and processing.

### Running the Project
- **Data Loading** 📥:
  - Use Snowflake's Copy commands to load data from ADLS to the Bronze layer.
- **Data Processing** 🔄:
  - Transform data in the Silver layer.
  - Aggregate data in the Gold layer for analytics.

## Usage
- Run predefined queries and reports from the Gold layer using BI tools 📊.
- Utilize Snowflake’s advanced features for on-demand analytics 🔎.
