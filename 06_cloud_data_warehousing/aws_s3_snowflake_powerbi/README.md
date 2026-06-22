\# AWS S3 to Snowflake Data Pipeline with Power BI



End-to-End Cloud Data Analytics Workflow using AWS S3, Snowflake, SQL, and Power BI.



\## Project Goal



Build a secure cloud data pipeline that loads data from AWS S3 into Snowflake, performs SQL-based transformations, and exposes the transformed data to Power BI for reporting.



\---



\## Architecture



```text

Agriculture Dataset

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

Power BI Reporting

```



\---



\## Project Workflow



\* Uploaded agriculture dataset to AWS S3

\* Created IAM Role and configured Trust Policy

\* Created Snowflake Storage Integration

\* Connected Snowflake with AWS S3 securely

\* Created External Stage in Snowflake

\* Loaded data into Snowflake tables

\* Performed SQL-based data validation and transformation

\* Connected Snowflake directly to Power BI

\* Built reporting layer on top of Snowflake data



\---



\## Key Skills Demonstrated



✔ AWS S3



✔ AWS IAM



✔ Snowflake Storage Integration



✔ Cloud Data Warehousing



✔ SQL Data Transformation



✔ Data Validation



✔ Power BI Connectivity



✔ End-to-End Analytics Workflow



\---



\## Technologies Used



\* AWS S3

\* AWS IAM

\* Snowflake

\* SQL

\* Power BI

\* Power Query



\---



\## Project Preview



\### Secure AWS ↔ Snowflake Integration



Demonstrates IAM Role configuration and Trust Relationship used to securely connect AWS S3 with Snowflake.



!\[AWS Integration](screenshots/aws\_interation.png)



\---



\### Snowflake Data Available in Power BI



Validating successful connectivity between Snowflake and Power BI.



!\[Snowflake to Power BI](screenshots/loading\_from\_snowflake\_to\_powerbi.png)



\---



\### Reporting Layer Built on Snowflake Data



Power BI report created using transformed Snowflake data.



!\[Agriculture Analysis](screenshots/yield\_analysis.png)



\---



\## Repository Structure



```text

aws\_s3\_snowflake\_powerbi/



├── dataset/

│   └── data\_season.csv

│

├── screenshots/

│   ├── aws\_interation.png

│   ├── loading\_from\_snowflake\_to\_powerbi.png

│   └── yield\_analysis.png

│

├── sql\_powerrbi.sql

├── snowflake+aws.pbix

└── README.md

```



\---



\## Author



\*\*Sagar Bairwa\*\*



B.Tech CSE | Aspiring Data Analyst



\*\*Skills:\*\* SQL • Power BI • Python • Snowflake • AWS • Data Analytics



