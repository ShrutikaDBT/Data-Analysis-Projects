


select * from heart_disease_prediction;


/*Total Patients
Patients with Heart Disease
Heart Disease Rate (%)*/

SELECT 
  COUNT(*) AS total_patients,
  SUM(CASE WHEN heart_disease = "Presence" THEN 1 ELSE 0 END) AS disease_patients,
  ROUND(
    SUM(CASE WHEN heart_disease = "Presence" THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2 
  ) AS disease_rate
FROM heart_disease_prediction;



/*Avg cholesterol for Presence vs Absence*/

SELECT
    AVG(CASE 
            WHEN heart_disease = 'Presence' 
            THEN cholesterol 
        END) AS Avg_cholesterol_for_Presence,
   AVG(CASE 
            WHEN heart_disease = 'Absence' 
            THEN cholesterol 
        END) AS Avg_cholesterol_for_Absence
FROM heart_disease_prediction;


/*Count of patients by chest pain type*/

select 
 sum(case when Chest_pain_type=1 then 1 else 0 END) AS Chest_pain_type_1,
 sum(case when Chest_pain_type=2 then 1 else 0 END) AS Chest_pain_type_2,
 sum(case when Chest_pain_type=3 then 1 else 0 END) AS Chest_pain_type_3,
 sum(case when Chest_pain_type=4 then 1 else 0 END) AS Chest_pain_type_4
 FROM heart_disease_prediction;

/* Gender-wise disease distribution */

select 
 sum(case when sex=1 then 1 else 0 END) AS No_of_Male_Patients,
 sum(case when sex=0 then 1 else 0 END) AS No_of_Female_Patients
FROM heart_disease_prediction;















