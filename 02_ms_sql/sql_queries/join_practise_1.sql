--  apply join on employee-department table

use [Sales Database]

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    dept_id INT
);

INSERT INTO Employees VALUES
(1, 'Sagar', 101),
(2, 'Aman', 102),
(3, 'Ravi', 103),
(4, 'Neha', NULL),
(5, 'Priya', 105),
(6, 'Karan', 106);

CREATE TABLE Departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO Departments VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing'),
(107, 'Sales');

select * from Employees
select * from Departments

--inner join
select * from Employees as a inner join Departments as b
on a.dept_id = b.dept_id

--left outer join
 select * from Employees as a left join Departments as b
 on a.dept_id = b.dept_id

 select 
 a.emp_id, 
 a.name, 
 a.dept_id,
 b.dept_name
 from Employees as a left join Departments as b
 on a.dept_id = b.dept_id


  --right outer join 
  select * from Employees as a right join Departments as b
  on a.dept_id = b.dept_id

  select 
  a.emp_id,
  a.name,
  b.dept_id,
  b.dept_name
  from Employees as a right join Departments as b
  on a.dept_id=  b.dept_id


  --left/right anti join
  select * from Employees as a left join Departments as b
  on a.dept_id = b.dept_id
  where b.dept_id is null

  select * from Employees as a right join Departments as b
  on a.dept_id = b.dept_id
  where a.dept_id is null

  -- full outer join
  select * from Employees as a full outer join Departments as b
  on a.dept_id = b.dept_id

  select 
  a.emp_id,
  a.name,
  COALESCE(a.dept_id, b.dept_id) as dept_id,
  b.dept_name
  from Employees as a full outer join Departments as b
  on a.dept_id = b.dept_id
  --order by dept_id asc