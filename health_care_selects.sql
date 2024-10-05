-- get all patients and their assigned doctors
SELECT p.first_name AS patient_first_name, p.last_name AS patient_last_name, 
       d.first_name AS doctor_first_name, d.last_name AS doctor_last_name
FROM patients p
JOIN doctors d ON p.doctor_id = d.id;

-- count the number of doctors in each department
SELECT dep.name AS department, COUNT(d.id) AS doctor_count
FROM doctors d
JOIN departments dep ON d.department_id = dep.id
GROUP BY dep.name;

-- find the total number of patients admitted per department
SELECT dep.name AS department, COUNT(p.id) AS total_patients
FROM patients p
JOIN departments dep ON p.department_id = dep.id
GROUP BY dep.name;

-- get the latest appointment for each patient using a window function
SELECT patient_id, appointment_date, reason,
       ROW_NUMBER() OVER (PARTITION BY patient_id ORDER BY appointment_date DESC) AS rn
FROM appointments
WHERE rn = 1;

-- get the average length of stay for patients in each department
SELECT dep.name AS department, AVG(DATEDIFF(discharge_date, admission_date)) AS avg_length_of_stay
FROM patients p
JOIN departments dep ON p.department_id = dep.id
WHERE discharge_date IS NOT NULL
GROUP BY dep.name;

-- retrieve all appointments for a specific patient using the stored procedure
CALL get_patient_appointments(4);

-- get the total prescriptions given to each patient
SELECT p.first_name, p.last_name, COUNT(pr.id) AS total_prescriptions
FROM patients p
LEFT JOIN prescriptions pr ON p.id = pr.patient_id
GROUP BY p.id;

-- view details of appointments with doctor names
SELECT a.id AS appointment_id, a.appointment_date, a.reason, 
       CONCAT(d.first_name, ' ', d.last_name) AS doctor_name
FROM appointments a
JOIN doctors d ON a.doctor_id = d.id;
