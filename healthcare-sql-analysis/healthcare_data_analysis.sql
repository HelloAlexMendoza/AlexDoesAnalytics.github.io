-- Healthcare Data Analysis
-- This project explores patient demographics, medical conditions,
-- admissions, billing, insurance providers, medications, and test results.

-- Preview the dataset
SELECT *
FROM healthcare_data;

-- 1. Total number of patients
SELECT COUNT(DISTINCT name) AS Total_Patients
FROM healthcare_data;

-- 2. Find the three most common medical conditions
SELECT TOP 3
    medical_condition,
    COUNT(*) AS condition_count
FROM healthcare_data
GROUP BY medical_condition
ORDER BY condition_count DESC;

-- 3. Calculate the average age of patients
SELECT AVG(age) AS Average_Age
FROM healthcare_data;

-- 4. Count patients by gender
SELECT
    gender,
    COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY gender;

-- 5. Calculate total billing amount by insurance provider
SELECT
    insurance_provider,
    SUM(billing_amount) AS Total_Billed
FROM healthcare_data
GROUP BY insurance_provider
ORDER BY Total_Billed DESC;

-- 6. Find the most common admission types
SELECT
    admission_type,
    COUNT(*) AS Frequency
FROM healthcare_data
GROUP BY admission_type
ORDER BY Frequency DESC;

-- 7. Find patients with abnormal test results
SELECT
    name,
    medical_condition,
    test_results
FROM healthcare_data
WHERE test_results = 'Abnormal';

-- 8. Review medications prescribed by medical condition
SELECT
    medical_condition,
    medication,
    COUNT(*) AS prescription_count
FROM healthcare_data
GROUP BY medical_condition, medication
ORDER BY prescription_count DESC;

-- 9. Identify the most frequent doctors by medical condition
SELECT
    medical_condition,
    doctor_name,
    COUNT(*) AS patient_count
FROM healthcare_data
GROUP BY medical_condition, doctor_name
ORDER BY medical_condition, patient_count DESC;

-- 10. Identify the most prescribed medications
SELECT TOP 10
    medication,
    COUNT(*) AS prescription_count
FROM healthcare_data
WHERE medication IS NOT NULL
GROUP BY medication
ORDER BY prescription_count DESC;
