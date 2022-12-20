--Data Analysis - Question 1
--list the employee number, last name, first name, sex, and salary of each employee
SELECT E.EMP_NO,
	E.LAST_NAME,
	E.FIRST_NAME,
	E.SEX,
	S.SALARY
FROM EMPLOYEES E
JOIN SALARIES S ON E.EMP_NO = S.EMP_NO
ORDER BY EMP_NO;

--Data Analysis - Question 2
--List the first name, last name, and hire date for employees who were hired in 1986
SELECT FIRST_NAME,
	LAST_NAME,
	HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%86'
ORDER BY HIRE_DATE ASC;

--Data Analysis - Question 3
--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT M.DEPT_NO,
	D.DEPT_NAME,
	M.EMP_NO,
	E.LAST_NAME,
	E.FIRST_NAME
FROM DEPT_MANAGER M
JOIN EMPLOYEES E ON M.EMP_NO = E.EMP_NO
JOIN DEPARTMENTS D ON M.DEPT_NO = D.DEPT_NO;

-- Data Analysis - QUESTION 4
--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT E.EMP_NO,
	E.LAST_NAME,
	E.FIRST_NAME,
	D.DEPT_NO,
	D.DEPT_NAME
FROM EMPLOYEES E
JOIN DEPT_EMP ON E.EMP_NO = DEPT_EMP.EMP_NO
JOIN DEPARTMENTS D ON DEPT_EMP.DEPT_NO = D.DEPT_NO;

-- Data Analysis - QUESTION 5
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT E.FIRST_NAME,
	E.LAST_NAME,
	E.SEX
FROM EMPLOYEES E
WHERE FIRST_NAME = 'Hercules'
	AND LAST_NAME LIKE 'B%';

-- Data Analysis - QUESTION 6
--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT E.EMP_NO,
	E.LAST_NAME,
	E.FIRST_NAME,
	D.DEPT_NAME
FROM EMPLOYEES E
JOIN DEPT_EMP ON E.EMP_NO = DEPT_EMP.EMP_NO
JOIN DEPARTMENTS D ON DEPT_EMP.DEPT_NO = D.DEPT_NO
WHERE D.DEPT_NAME = 'Sales';

--Data Analysis - QUESTION 7
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT E.EMP_NO,
	E.LAST_NAME,
	E.FIRST_NAME,
	D.DEPT_NAME
FROM EMPLOYEES E
JOIN DEPT_EMP ON E.EMP_NO = DEPT_EMP.EMP_NO
JOIN DEPARTMENTS D ON DEPT_EMP.DEPT_NO = D.DEPT_NO
WHERE D.DEPT_NAME IN ('Sales','Development');

--Data Analysis - QUESTION 8
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT LAST_NAME,
	COUNT(LAST_NAME) AS "Frequency"
FROM EMPLOYEES
GROUP BY LAST_NAME
ORDER BY "Frequency" DESC;