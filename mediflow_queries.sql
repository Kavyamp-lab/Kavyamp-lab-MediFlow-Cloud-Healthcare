-- =========================================
-- MediFlow Cloud - Healthcare Analytics SQL
-- =========================================

-- 1. Total Patients by Department
SELECT 
    department,
    COUNT(*) AS total_patients
FROM "mediflow_db"."data"
GROUP BY department
ORDER BY total_patients DESC;


-- 2. Average Length of Stay (ALOS) by Department
SELECT 
    department,
    AVG(length_of_stay_days) AS avg_length_of_stay
FROM "mediflow_db"."data"
GROUP BY department
ORDER BY avg_length_of_stay DESC;


-- 3. Readmission Analysis by Department
SELECT 
    department,
    COUNT(*) AS total_patients,
    SUM(readmitted_30_days) AS readmitted_count,
    (SUM(readmitted_30_days) * 100.0 / COUNT(*)) AS readmission_rate
FROM "mediflow_db"."data"
GROUP BY department
ORDER BY readmission_rate DESC;


-- 4. Overall KPI Metrics
SELECT 
    COUNT(*) AS total_patients,
    AVG(length_of_stay_days) AS avg_length_of_stay,
    (SUM(readmitted_30_days) * 100.0 / COUNT(*)) AS overall_readmission_rate
FROM "mediflow_db"."data";


-- 5. Patient Distribution by Zip Code (Hotspots)
SELECT 
    zip_code,
    COUNT(*) AS patient_count
FROM "mediflow_db"."data"
GROUP BY zip_code
ORDER BY patient_count DESC;


-- 6. Age Group Readmission Analysis
SELECT 
    CASE 
        WHEN age <= 20 THEN '0-20'
        WHEN age <= 40 THEN '21-40'
        WHEN age <= 60 THEN '41-60'
        ELSE '60+'
    END AS age_group,
    COUNT(*) AS total_patients,
    SUM(readmitted_30_days) AS readmitted_count,
    (SUM(readmitted_30_days) * 100.0 / COUNT(*)) AS readmission_rate
FROM "mediflow_db"."data"
GROUP BY 
    CASE 
        WHEN age <= 20 THEN '0-20'
        WHEN age <= 40 THEN '21-40'
        WHEN age <= 60 THEN '41-60'
        ELSE '60+'
    END
ORDER BY readmission_rate DESC;