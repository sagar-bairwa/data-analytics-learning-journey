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
create or replace storage integration  tableau_integration
 type = external_stage
 storage_provider = 'S3'
 enabled = true
 storage_aws_role_arn = 'arn:aws:iam::698172256911:role/tableau.role'
 storage_allowed_locations = ('s3://tableau.project.22/')

 desc integration tableau_integration


--create stage to temporary hold data
create stage tableau_stage
 url = 's3://tableau.project.22/'
 storage_integration = tableau_integration

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