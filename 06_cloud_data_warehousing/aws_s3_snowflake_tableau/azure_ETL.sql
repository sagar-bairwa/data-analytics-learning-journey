--create databse and schema
create database Tableau
create schema Tableau_data


--create target table
create table tableau_dataset
(
    Household_ID string,	
    Region string,	
    Country string,	
    Energy_Source string,	
    Monthly_Usage_kWh float,
    Year int,
    Household_Size int,
    Income_Level string,
    Urban_Rural string,
    Adoption_Year int,
    Subsidy_Received string,
    Cost_Savings_USD float
);

--create storage integration
create or replace storage integration  azure_integration
 type = external_stage
 storage_provider = 'azure'
 enabled = true
 azure_tenant_id = '3b71067e-3991-4bd3-930e-8a3e2d10ef97'
 storage_allowed_locations = ('azure://snowflake8890.blob.core.windows.net/tableau-project/')

 desc integration azure_integration


 --create stage to temporary hold data
create stage tableau_stage
 url = 'azure://snowflake8890.blob.core.windows.net/tableau-project/'
 storage_integration = azure_integration

 list @tableau_stage


 --load data into table
 copy into tableau_dataset
 from @tableau_stage
 file_format = 
    (
        type = csv
        field_delimiter = ','
        skip_header = 1
    )
on_error = 'continue';


--check and validate
select * from tableau_dataset;

 