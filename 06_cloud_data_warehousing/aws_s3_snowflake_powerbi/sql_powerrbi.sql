 CREATE OR REPLACE STORAGE INTEGRATION BI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::698172256911:role/powerbi.role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://aws.snowflake.powerbi/')
  COMMENT = 'Optional Comment'


  //description Integration Object
  desc integration BI_Integration;
  
//drop database PowerBI

CREATE database PowerBI;

create schema PBI_Data;

create table PBI_Dataset (
Year int,	Location string,	Area	int,
Rainfall	float, Temperature	float, Soil_type string,
Irrigation	string, yeilds	int,Humidity	float,
Crops	string,price	int,Season string
);

select * from PBI_Dataset;

//drop database PowerBI;

create stage PowerBI.PBI_Data.pbi_stage
url = 's3://aws.snowflake.powerbi/'
storage_integration = BI_Integration;

//desc stage s1

//drop stage s1;


copy into PBI_Dataset 
from @pbi_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue'

list @pbi_stage

select * from pbi_dataset;

select count(*) from pbi_dataset;


-- data transformation

select * from pbi_dataset;

select location, count(*) 
from pbi_dataset
group by location
order by location;


select location,crops ,count(*)
from pbi_dataset
group by location ,crops
order by location;

--copy data into another table for data backup
create table agriculture as select * from pbi_dataset

select * from agriculture


--increare the rainfall by 8%
update agriculture
set rainfall = 1.08*rainfall

select * from agriculture


--add a year group column
alter table agriculture
add column year_group string

update agriculture
set  year_group = 
    case 
        when year <=2009 then 'Y1'
        when year <=2014 then 'Y2'
        else 'Y3'
    end

select * from agriculture;


--create rainfall grooup column
alter table agriculture
add column rainfall_group string;

update agriculture
set rainfall_group = 
    case
        when rainfall <=1200 then 'Low'
        when rainfall <=2800 then 'Medium'
        else 'High'
    end;

select * from agriculture