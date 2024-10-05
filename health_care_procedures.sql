DELIMITER //

CREATE PROCEDURE `get_patient_appointments` (
    IN `patient_id` INT
)
BEGIN
    SELECT 
        `a`.`id` AS `appointment_id`,
        `a`.`appointment_date`,
        `a`.`reason`,
        `d`.`first_name` AS `doctor_first_name`,
        `d`.`last_name` AS `doctor_last_name`
    FROM 
        `appointments` `a`
    JOIN 
        `doctors` `d` ON `a`.`doctor_id` = `d`.`id`
    WHERE 
        `a`.`patient_id` = `patient_id`;
END; //

DELIMITER ;