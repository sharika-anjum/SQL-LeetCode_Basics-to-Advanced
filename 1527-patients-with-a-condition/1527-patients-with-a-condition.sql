# Write your MySQL query statement below
Select patient_id,patient_name,conditions from Patients
where conditions LIKE '% DIAB1%' OR 
conditions LIKE 'DIAB1%'