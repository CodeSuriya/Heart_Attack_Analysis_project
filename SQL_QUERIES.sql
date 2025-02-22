use heart_attack_analysis
select * from cleaned_india_dataset


select count(*) from cleaned_india_dataset as total_counts

select age, count(*) as count from cleaned_india_dataset group by age order by age

SELECT gender, COUNT(*) AS count FROM cleaned_india_dataset GROUP BY gender;

SELECT gender, AVG(age) AS avg_age FROM cleaned_india_dataset GROUP BY gender;

SELECT COUNT(*) AS hypertension_cases FROM cleaned_india_dataset WHERE hypertension = 'yes';

SELECT COUNT(*) AS diabetes_cases FROM cleaned_india_dataset WHERE diabetes = 'Yes';
SELECT smoking_status, COUNT(*) AS count FROM cleaned_india_dataset GROUP BY smoking_status;

SELECT COUNT(*) AS obese_patients FROM cleaned_india_dataset WHERE bmi > 30;

SELECT physical_activity, COUNT(*) AS count FROM cleaned_india_dataset GROUP BY physical_activity;

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_india_dataset) AS non_veg_diet_percentage FROM cleaned_india_dataset WHERE diet_quality = 'Non-Vegetarian';
 

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_india_dataset) AS survival_rate FROM cleaned_india_dataset WHERE heart_attack = 'Yes' AND stress_level IN ('Low', 'Medium');


SELECT Region_category, COUNT(*) AS cases FROM cleaned_india_dataset GROUP BY Region_category ORDER BY cases DESC;

SELECT location_type, COUNT(*) AS count FROM cleaned_india_dataset GROUP BY location_type;

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_india_dataset) AS mortality_rate FROM cleaned_india_dataset WHERE heart_attack = 'Yes' AND oxygen_level < 90;


Select * from cleaned_indonesia_dataset

SELECT COUNT(*) AS total_records FROM cleaned_indonesia_dataset;

SELECT region_category, COUNT(*) AS count FROM cleaned_indonesia_dataset GROUP BY region_category ORDER BY count DESC;

SELECT gender, AVG(age) AS avg_age FROM cleaned_indonesia_dataset GROUP BY gender;

SELECT COUNT(*) AS heart_attack_cases FROM cleaned_indonesia_dataset WHERE heart_attack = 'Yes';

SELECT COUNT(*) AS high_cholesterol_cases FROM cleaned_indonesia_dataset WHERE cholesterol_level = 'High';

SELECT COUNT(*) AS high_cholesterol_cases 
FROM cleaned_indonesia_dataset 
WHERE cholesterol_level >= 240;

SELECT smoking_status, COUNT(*) AS count FROM cleaned_indonesia_dataset GROUP BY smoking_status;

SELECT COUNT(*) AS physically_active FROM cleaned_indonesia_dataset WHERE physical_activity = 'High';

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_indonesia_dataset) AS obesity_percentage FROM cleaned_indonesia_dataset WHERE BMI > 30;

SELECT COUNT(*) AS hypertension_cases FROM cleaned_indonesia_dataset WHERE hypertension = 'Yes';

SELECT alcohol_consumption, COUNT(*) AS count 
FROM cleaned_indonesia_dataset 
GROUP BY alcohol_consumption 
ORDER BY count DESC;

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_indonesia_dataset) AS unhealthy_diet_percentage 
FROM cleaned_indonesia_dataset 
WHERE diet_quality = 'unhealthy';

SELECT employment_status, COUNT(*) AS count 
FROM cleaned_indonesia_dataset 
GROUP BY employment_status;

SELECT occupation_type, stress_level, COUNT(*) AS count FROM cleaned_indonesia_dataset GROUP BY occupation_type, stress_level ORDER BY occupation_type;

SELECT sleep_hours, stress_level, COUNT(*) AS count FROM cleaned_indonesia_dataset GROUP BY sleep_hours, stress_level ORDER BY sleep_hours;

SELECT healthcare_access, COUNT(*) AS count FROM cleaned_indonesia_dataset GROUP BY healthcare_access;


SELECT * FROM cleaned_russia_dataset
select count(*) as total_records from  cleaned_russia_dataset

show columns from cleaned_russia_dataset


SELECT Region_Category, COUNT(*) AS count FROM cleaned_russia_dataset GROUP BY Region_Category ORDER BY count DESC;

SELECT Gender, AVG(Blood_Pressure) AS avg_blood_pressure FROM cleaned_russia_dataset GROUP BY Gender;

SELECT COUNT(*) AS high_cholesterol_cases FROM cleaned_russia_dataset WHERE Cholesterol_Level >= 240;

SELECT Physical_Activity, AVG(BMI) AS avg_BMI FROM cleaned_russia_dataset GROUP BY Physical_Activity ORDER BY avg_BMI DESC;

SELECT COUNT(*) AS heart_attack_cases FROM cleaned_russia_dataset WHERE Heart_Attack = 'Yes';
SELECT Smoking_Status, COUNT(*) AS heart_attack_count 
FROM cleaned_russia_dataset 
WHERE Heart_Attack = 'Yes' 
GROUP BY Smoking_Status 
ORDER BY heart_attack_count DESC;

SELECT COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_russia_dataset) AS diabetes_percentage 
FROM cleaned_russia_dataset 
WHERE Diabetes = 'Yes';

SELECT Alcohol_Consumption, COUNT(*) AS count FROM cleaned_russia_dataset GROUP BY Alcohol_Consumption ORDER BY count DESC;
SELECT Stress_Level, COUNT(*) AS heart_attack_cases 
FROM cleaned_russia_dataset 
WHERE Heart_Attack = 'Yes' 
GROUP BY Stress_Level 
ORDER BY heart_attack_cases DESC;

SELECT Stress_Level, AVG(Sleep_Hours) AS avg_sleep FROM cleaned_russia_dataset GROUP BY Stress_Level ORDER BY avg_sleep;

SELECT Occupation, COUNT(*) AS count FROM cleaned_russia_dataset GROUP BY Occupation ORDER BY count DESC;
SELECT Income_Level, COUNT(*) AS health_awareness_count 
FROM cleaned_russia_dataset 
WHERE Health_Awareness = 'High Awareness' 
GROUP BY Income_Level 
ORDER BY health_awareness_count DESC;

SELECT Daily_Water_Intake, COUNT(*) AS obese_count 
FROM cleaned_russia_dataset 
WHERE Obesity = 'Yes' 
GROUP BY Daily_Water_Intake 
ORDER BY obese_count DESC;

SELECT Education_Level, COUNT(*) AS medication_users 
FROM cleaned_russia_dataset 
WHERE Medication = 'Yes' 
GROUP BY Education_Level 
ORDER BY medication_users DESC;