-- Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

-- Note:

-- The tables may contain duplicate records.
-- The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.


SELECT C.COMPANY_CODE, C.FOUNDER,
COUNT (DISTINCT E.LEAD_MANAGER_CODE) AS LEAD_MANAGER,
COUNT (DISTINCT E.SENIOR_MANAGER_CODE) AS SENIOR_MANAGER,
COUNT (DISTINCT E.MANAGER_CODE) AS MANAGER,
COUNT (DISTINCT E.EMPLOYEE_CODE) AS EMPLOYEE
FROM COMPANY AS C
JOIN EMPLOYEE AS E ON C.COMPANY_CODE = E.COMPANY_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE;