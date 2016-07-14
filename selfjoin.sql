select employees.employeeid, employees.lastname, employees.reportsto as 'Manager',mgr2_tbl.employeeid as 'Manager''s Manager'
from employees 
left join employees as mgr_tbl
on employees.reportsto = mgr_tbl.employeeid
left join employees as mgr2_tbl
on mgr_tbl.reportsto = mgr2_tbl.employeeid
