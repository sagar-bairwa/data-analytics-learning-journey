\# AWS S3 to Snowflake Data Pipeline with Tableau



End-to-End Cloud Data Analytics Workflow using AWS S3, Snowflake, SQL, and Tableau.



\## Overview



This project demonstrates how renewable energy consumption data can be ingested from AWS S3, securely integrated with Snowflake using IAM Roles and Storage Integrations, transformed using SQL, and visualized in Tableau.



The primary focus of this project is implementing a real-world cloud data pipeline and data warehousing workflow rather than dashboard development alone.



\---



\## Architecture



```text

Renewable Energy Dataset

&#x20;       │

&#x20;       ▼

AWS S3 Bucket

&#x20;       │

&#x20;       ▼

IAM Role + Trust Policy

&#x20;       │

&#x20;       ▼

Snowflake Storage Integration

&#x20;       │

&#x20;       ▼

External Stage

&#x20;       │

&#x20;       ▼

Snowflake Tables

&#x20;       │

&#x20;       ▼

SQL Validation \& Transformation

&#x20;       │

&#x20;       ▼

Tableau Dashboard

```



\---



\## Project Workflow



\* Uploaded renewable energy dataset to AWS S3

\* Created IAM Role and configured Trust Policy

\* Created Snowflake Storage Integration

\* Connected Snowflake with AWS S3 securely

\* Created External Stage in Snowflake

\* Loaded data into Snowflake tables

\* Performed SQL-based data validation and transformation

\* Connected Snowflake directly to Tableau

\* Built an interactive energy consumption dashboard



\---



\## Key Skills Demonstrated



AWS S3 • AWS IAM • Snowflake • Storage Integration • SQL • Data Warehousing • Data Transformation • Tableau • Cloud Analytics



\---



\## Technologies Used



\* AWS S3

\* AWS IAM

\* Snowflake

\* SQL

\* Tableau

\* Tableau Public



\---



\## Project Preview



\### Secure AWS ↔ Snowflake Integration



IAM Role and Trust Relationship used to securely connect AWS S3 with Snowflake.



!\[AWS Integration](screenshots/aws\_integration.png)



\---



\### Snowflake Storage Integration Validation



Verification of Snowflake Storage Integration and external stage configuration.



!\[Snowflake Storage Integration](screenshots/sql\_storage\_integration.png)



\---



\### Energy Consumption Dashboard



Interactive Tableau dashboard built on transformed Snowflake data.



!\[Energy Dashboard](screenshots/dashboard.png)



\---



\## Live Dashboard



📊 Tableau Public Dashboard



\[View Interactive Dashboard](YOUR\_TABLEAU\_PUBLIC\_LINK)



\---



\## Repository Structure



```text

aws\_s3\_snowflake\_tableau/



├── dataset/

│   └── renewable\_energy\_usage\_sampled.csv

│

├── screenshots/

│   ├── aws\_integration.png

│   ├── sql\_storage\_integration.png

│   └── dashboard.png

│

├── integrate\_and\_load\_data.sql

├── energy\_consumption\_dashboard.twbx

└── README.md

```



\---



\## Author



\*\*Sagar Bairwa\*\*



B.Tech CSE | Aspiring Data Analyst



\*\*Skills:\*\* SQL • Tableau • Power BI • Python • Snowflake • AWS • Data Analytics



