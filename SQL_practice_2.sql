--- Retrieve all employees whose address is in Elgin,IL.
SELECT F_NAME, L_NAME FROM EMPLOYEES 
WHERE ADDRESS LIKE '%Elgin,IL';

--- Retrieve all employees who were born during the 1970’s.
SELECT F_NAME, L_NAME FROM EMPLOYEES 
WHERE B_DATE LIKE '197%';

--- Retrieve all employees in department 5 whose salary is between 60000 and 70000.
SELECT F_NAME, L_NAME FROM EMPLOYEES 
WHERE DEP_ID = 5 AND (SALARY BETWEEN 60000 AND 70000);

-------------

--- Retrieve a list of employees ordered by department ID
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES
ORDER BY DEP_ID;

--- Retrieve a list of employees ordered in descending order by department ID and 
--- within each department ordered alphabetically in descending order by last name.
SELECT F_NAME, L_NAME, DEP_ID FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

--- In above problem, use department name instead of department ID. 
--- Retrieve a list of employees ordered by department name,  
--- and within each department ordered alphabetically in descending order by last name.
SELECT E.F_NAME, E.L_NAME, D.DEP_NAME
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY DEP_NAME DESC, L_NAME DESC;

-------------

--- For each department ID retrieve the number of employees in the department.
SELECT DEP_ID, COUNT(DEP_ID) AS COUNT FROM EMPLOYEES
GROUP BY DEP_ID;

--- For each department retrieve the number of employees in the department, 
--- and the average employee salary in the department. Label the computed columns 
--- in the result set as NUM_EMPLOYEES and AVG_SALARY.
SELECT DEP_ID, COUNT(DEP_ID) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY" FROM EMPLOYEES
GROUP BY DEP_ID;

--- In above problem, order the result set by Average Salary.
SELECT DEP_ID, COUNT(DEP_ID) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY" FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

--- In above problem, limit the result to departments with fewer than 4 employees.
SELECT DEP_ID, COUNT(DEP_ID) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY" FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(DEP_ID) < 4
ORDER BY AVG_SALARY;
