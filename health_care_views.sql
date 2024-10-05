CREATE VIEW `health_care_co`.`doctor_details` AS
SELECT 
    `d`.`id` AS `doctor_id`,
    `d`.`first_name` AS `doctor_first_name`,
    `d`.`last_name` AS `doctor_last_name`,
    `d`.`start_date`,
    `d`.`role`,
    `d`.`specialization`,
    `d`.`contact_number`,
    `dep`.`name` AS `department_name`,
    `dep`.`location` AS `department_location`
FROM 
    `doctors` `d`
LEFT JOIN 
    `departments` `dep` ON `d`.`department_id` = `dep`.`id`;
    
    
CREATE VIEW `health_care_co`.`nurse_details` AS
SELECT 
    `n`.`id` AS `nurse_id`,
    `n`.`first_name` AS `nurse_first_name`,
    `n`.`last_name` AS `nurse_last_name`,
    `n`.`start_date`,
    `n`.`department_id`,
    `d`.`first_name` AS `doctor_first_name`,
    `d`.`last_name` AS `doctor_last_name`
FROM 
    `nurses` `n`
LEFT JOIN 
    `doctors` `d` ON `n`.`doctor_id` = `d`.`id`;
    
    
CREATE VIEW `health_care_co`.`patient_admissions` AS
SELECT 
    `p`.`id` AS `patient_id`,
    `p`.`first_name` AS `patient_first_name`,
    `p`.`last_name` AS `patient_last_name`,
    `p`.`admission_date`,
    `p`.`discharge_date`,
    `n`.`first_name` AS `nurse_first_name`,
    `n`.`last_name` AS `nurse_last_name`,
    `d`.`first_name` AS `doctor_first_name`,
    `d`.`last_name` AS `doctor_last_name`,
    `dep`.`name` AS `department_name`
FROM 
    `patients` `p`
LEFT JOIN 
    `nurses` `n` ON `p`.`nurse_id` = `n`.`id`
LEFT JOIN 
    `doctors` `d` ON `p`.`doctor_id` = `d`.`id`
LEFT JOIN 
    `departments` `dep` ON `p`.`department_id` = `dep`.`id`;
    

CREATE VIEW `health_care_co`.`appointment_details` AS
SELECT 
    `a`.`id` AS `appointment_id`,
    `a`.`appointment_date`,
    `a`.`reason`,
    `p`.`first_name` AS `patient_first_name`,
    `p`.`last_name` AS `patient_last_name`,
    `d`.`first_name` AS `doctor_first_name`,
    `d`.`last_name` AS `doctor_last_name`
FROM 
    `appointments` `a`
JOIN 
    `patients` `p` ON `a`.`patient_id` = `p`.`id`
JOIN 
    `doctors` `d` ON `a`.`doctor_id` = `d`.`id`;
    
    
CREATE VIEW `health_care_co`.`prescription_details` AS
SELECT 
    `pr`.`id` AS `prescription_id`,
    `p`.`first_name` AS `patient_first_name`,
    `p`.`last_name` AS `patient_last_name`,
    `m`.`name` AS `medication_name`,
    `pr`.`dosage`,
    `pr`.`prescribed_date`,
    `d`.`first_name` AS `doctor_first_name`,
    `d`.`last_name` AS `doctor_last_name`
FROM 
    `prescriptions` `pr`
JOIN 
    `patients` `p` ON `pr`.`patient_id` = `p`.`id`
JOIN 
    `medications` `m` ON `pr`.`medication_id` = `m`.`id`
JOIN 
    `doctors` `d` ON `pr`.`doctor_id` = `d`.`id`;