-- Create the table with potential duplicates
CREATE TABLE EmployeeRecords (
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ManagerID INT
);

-- Insert data into the table, including duplicates
INSERT INTO EmployeeRecords (EmployeeID, EmployeeName, ManagerID) VALUES
(1, 'Alice Smith', NULL),
(2, 'Bob Johnson', 1),
(3, 'Carol White', 1),
(4, 'David Brown', 2),
(5, 'Eve Davis', 2),
(6, 'Frank Miller', 3),
(2, 'Bob Johnson', 1),  -- Duplicate entry
(4, 'David Brown', 2);  -- Duplicate entry


select * from EmployeeRecords
order by EmployeeID,EmployeeName


--backup of table
select * into emp_bkp from EmployeeRecords
order by EmployeeID,EmployeeName

--Method 1) Via cte
with cte as (
select *, ROW_NUMBER() over(partition by employeeID, EmployeeName, ManagerId order by employeeID) [Row_rank]
from emp_bkp
) 
--select * from cte
delete from cte 
where Row_rank > 1

select * from emp_bkp

--Method 2) using distinct keyword

select * into emp_bkp2 from EmployeeRecords -- Creating Backup


select * into non_dup from (
select distinct * from emp_bkp2) x