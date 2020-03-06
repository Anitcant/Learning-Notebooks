CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
                            
  CREATE TABLE JOB_HISTORY (
                            EMPL_ID CHAR(9) NOT NULL, 
                            START_DATE DATE,
                            JOBS_ID CHAR(9) NOT NULL,
                            DEPT_ID CHAR(9),
                            PRIMARY KEY (EMPL_ID,JOBS_ID));
 
 CREATE TABLE JOBS (
                            JOB_IDENT CHAR(9) NOT NULL, 
                            JOB_TITLE VARCHAR(15) ,
                            MIN_SALARY DECIMAL(10,2),
                            MAX_SALARY DECIMAL(10,2),
                            PRIMARY KEY (JOB_IDENT));

CREATE TABLE DEPARTMENTS (
                            DEPT_ID_DEP CHAR(9) NOT NULL, 
                            DEP_NAME VARCHAR(15) ,
                            MANAGER_ID CHAR(9),
                            LOC_ID CHAR(9),
                            PRIMARY KEY (DEPT_ID_DEP));

CREATE TABLE LOCATIONS (
                            LOCT_ID CHAR(9) NOT NULL,
                            DEP_ID_LOC CHAR(9) NOT NULL,
                            PRIMARY KEY (LOCT_ID,DEP_ID_LOC));
                            
                           

SELECT EMP_ID, F_NAME, L_NAME FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%'
ORDER BY L_NAME;

SELECT EMP_ID, F_NAME, L_NAME, B_DATE FROM EMPLOYEES
WHERE B_DATE LIKE '197%';

SELECT EMP_ID, L_NAME, DEP_ID, SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 60000 AND 70000 AND DEP_ID=5;

SELECT EMP_ID, L_NAME, DEP_ID FROM EMPLOYEES
ORDER BY DEP_ID;

SELECT EMP_ID, L_NAME, DEP_ID FROM EMPLOYEES
ORDER BY DEP_ID DESC, L_NAME DESC;

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES FROM EMPLOYEES
GROUP BY DEP_ID;

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

SELECT DEP_ID, COUNT(*) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY DEP_ID HAVING COUNT(*)<5
ORDER BY AVG_SALARY;

SELECT E.L_NAME, E.F_NAME, D.DEP_NAME
FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC;