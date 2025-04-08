Select *
From healthcare_data

1. Total Number of Patients

Select Count (Distinct Name) AS Total_Patients
From healthcare_data;

2. Find Most Common Medical Conditions

SELECT TOP 3 Medical_Condition, COUNT(*) AS condition_count
FROM healthcare_data
GROUP BY Medical_Condition
ORDER BY condition_count DESC;

3. Average Age of Patients

Select AVG(age) AS Average_Age
From healthcare_data;

4. Patients By Gender

Select gender, Count(*) AS Patient_Count
From healthcare_data
Group BY Gender;

5. Calculate Total Biling Amount by Insurance Provider

Select Insurance_Provider, SUM(Billing_Amount) AS Total_Billed
From healthcare_data
Group By Insurance_Provider
Order BY Total_Billed DESC;

6. Most Common Admission Type

Select admission_type, COUNT(*) AS Frequency
From healthcare_data
Group BY Admission_Type
Order BY Frequency DESC;

7. Find Patients with Abnormal Test Results

SELECT name, Medical_Condition, Test_Results
From healthcare_data
Where Test_Results = 'Abnormal';

8. Find Medications Perscribed for a Specific Condition

SELECT medical_condition, medication, COUNT(*) AS prescription_count
FROM healthcare_data
GROUP BY medical_condition, medication
ORDER BY prescription_count DESC;


9. Identifiy the Most Frequent Doctors for Each Medical Condition

SELECT medical_condition, doctor_name, COUNT(*) AS patient_count
FROM Healthcare_Data
GROUP BY medical_condition, doctor_name
ORDER BY medical_condition, patient_count DESC;

10. Identify the Most Prescribed Medicaitons

SELECT TOP 10 medication, COUNT(*) AS prescription_count
FROM healthcare_data
WHERE medication IS NOT NULL
GROUP BY medication
ORDER BY prescription_count DESC;
