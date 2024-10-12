-- ## 1. Simple Join
-- Write an SQL query to retrieve the provider_name and provider_specialty for each provider in the providers table.

SELECT 
    provider_name, 
    provider_specialty
FROM 
    providers;


-- ## 2. Inner Join
-- Write an SQL query to find all patients who have visited a provider. Display the patient_id, first_name, last_name and provider_specialty.

SELECT 
    patients.patient_id, 
    patients.first_name, 
    patients.last_name, 
    providers.provider_specialty
FROM 
    patients
INNER JOIN 
    visits ON patients.patient_id = visits.patient_id
INNER JOIN 
    providers ON visits.provider_id = providers.provider_id;


-- ## 3. Left Join
-- Write an SQL query to list all patients and their visit details, including those who have not had any visits.
-- Display patient_id, first_name, last_name and date_of_visit. Include patients with no visits.

SELECT 
    patients.patient_id, 
    patients.first_name, 
    patients.last_name, 
    visits.date_of_visit
FROM 
    patients
LEFT JOIN 
    visits ON patients.patient_id = visits.patient_id;


-- ## 4. Join with Aggregation
-- Write an SQL query to find the number of visits each provider has had. Display the provider_name and the count of visits.

SELECT 
    providers.provider_name, 
    COUNT(visits.visit_id) AS number_of_visits
FROM 
    providers
LEFT JOIN 
    visits ON providers.provider_id = visits.provider_id
GROUP BY 
    providers.provider_name;


-- ## 5. Complex Join With Conditions
-- Write an SQL query to find all patients who have had visits that required admission.
-- Display the patient_id, first_name, last_name, admission_date and discharge_date. Ensure you join all relevant tables to get this information.

SELECT 
    patients.patient_id, 
    patients.first_name, 
    patients.last_name, 
    admissions.admission_date, 
    admissions.discharge_date
FROM 
    patients
INNER JOIN 
    visits ON patients.patient_id = visits.patient_id
INNER JOIN 
    admissions ON visits.visit_id = admissions.visit_id
WHERE 
    admissions.admission_date IS NOT NULL;


-- ## Bonus Question (optional)
-- Write an SQL query to find the details of patients who have had visits, including their first_name, last_name, date_of_birth
-- and the details of the visits they have had, including provider_name, visit_date, blood_pressure_systolic, blood_pressure_diastolic
-- and visit_status. Additionally, include information about the admissions and discharges related to these visits.
-- Display patients who had admissions where the discharge disposition was 'Home', and order the results by the date_of_visit in descending order.

SELECT 
    patients.first_name, 
    patients.last_name, 
    patients.date_of_birth, 
    providers.provider_name, 
    visits.date_of_visit AS visit_date, 
    visits.blood_pressure_systolic, 
    visits.blood_pressure_diastolic, 
    visits.visit_status, 
    admissions.admission_date, 
    admissions.discharge_date
FROM 
    patients
INNER JOIN 
    visits ON patients.patient_id = visits.patient_id
INNER JOIN 
    providers ON visits.provider_id = providers.provider_id
LEFT JOIN 
    admissions ON visits.visit_id = admissions.visit_id
WHERE 
    admissions.discharge_disposition = 'Home'
ORDER BY 
    visits.date_of_visit DESC;