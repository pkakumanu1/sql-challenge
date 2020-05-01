select E.emp_no,last_name,first_name,sex,S.salary from "Employees" as E
Join "Salaries" S
on E.emp_no=S.emp_no

select first_name,last_name,hire_date from "Employees"
where hire_date >= '1986-01-01' and hire_date <'1987-01-01'
order by hire_date

select D.dept_no,D.dept_name,M.emp_no,E.last_name,E.first_name
from "Departments" as D
join "Dept_Manager" as M
on D.dept_no=M.dept_no
join "Employees" as E
on M.emp_no=E.emp_no

select E.emp_no,E.last_name,E.first_name,D.dept_name
from "Employees" as E
join "Dept_Emp" as DE
on E.emp_no=DE.emp_no
join "Departments" as D
on D.dept_no=DE.dept_no

select first_name,last_name,sex 
from "Employees"
where first_name ='Hercules'
and last_name like 'B%'

select E.emp_no,E.last_name,E.first_name,D.dept_name
from "Employees" as E
join "Dept_Emp" as DE
on E.emp_no=DE.emp_no
join "Departments" as D
on D.dept_no=DE.dept_no
where D.dept_name = 'Sales'

select E.emp_no,E.last_name,E.first_name,D.dept_name
from "Employees" as E
join "Dept_Emp" as DE
on E.emp_no=DE.emp_no
join "Departments" as D
on D.dept_no=DE.dept_no
where  (D.dept_name = 'Sales'
		or D.dept_name = 'Development')

select last_name,count(*) as FreqCount
from "Employees"
group by last_name
order by FreqCount Desc