use avisoft ;
CREATE TABLE Employees (
    Id INT PRIMARY KEY,
    Salary INT
);

-- Insert values into the Employee table
INSERT INTO Employee (Id, Salary) VALUES (1, 100), (2, 200), (3, 300);
select max(Salary) as SecondHighestSalary
from avisoft.employee_table 
where Salary < (SELECT max(Salary)from avisoft.employee_table);