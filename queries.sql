CREATE DATABASE HR_Analytics;

CREATE TABLE hr_data (
           Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(100),
    DailyRate INT,
    Department VARCHAR(100),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(100),
    EmployeeCount INT,
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(20),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(100),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(10),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT,
    attrition_flag INT,
    age_band VARCHAR(50),
    manager_tenure_bin VARCHAR(50),
    tenure_bin VARCHAR(50),
    overtime_flag INT,
    high_income_flag INT,
    low_job_satisfaction INT,
    low_raise_flag INT,
    recent_promotion_flag INT,
    frequent_job_hops_flag INT
);

-- Preview first 10 rows of the dataset
SELECT * FROM hr_data LIMIT 10;

-- Get total number of employees
SELECT COUNT(*) AS total_employees FROM hr_data;

-- Check distinct values in Attrition column
SELECT DISTINCT Attrition FROM hr_data;

-- Calculate overall attrition percentage
SELECT 
    ROUND(100.0 * SUM(attrition_flag)::numeric / COUNT(*), 2) AS attrition_percent
FROM hr_data;


-- Average years at company
SELECT ROUND(AVG(yearsatcompany), 2) AS avg_years_at_company
FROM hr_data;

-- Average monthly income
SELECT ROUND(AVG(monthlyincome), 2) AS avg_income
FROM hr_data;


-- Attrition % by Gender
SELECT Gender,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY Gender;

-- Attrition % by Department
SELECT Department,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY Department;

-- Attrition % by Age Band
SELECT age_band,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY age_band
ORDER BY attrition_percent DESC;

-- Attrition % by Job Role
SELECT jobrole,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY jobrole
ORDER BY attrition_percent DESC;

-- Attrition % by Marital Status
SELECT maritalstatus,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY maritalstatus;



-- Attrition % by Overtime
SELECT overtime_flag,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY overtime_flag;

-- Attrition % by Low Job Satisfaction
SELECT low_job_satisfaction,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY low_job_satisfaction;

-- Attrition % by Frequent Job Hops
SELECT frequent_job_hops_flag,
       ROUND(100.0 * AVG(attrition_flag), 2) AS attrition_percent
FROM hr_data
GROUP BY frequent_job_hops_flag;


