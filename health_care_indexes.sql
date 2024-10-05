-- departments table
CREATE INDEX `idx_department_name` ON `departments`(`name`);
CREATE INDEX `idx_department_location` ON `departments`(`location`);

-- doctors table
CREATE INDEX `idx_doctor_department` ON `doctors`(`department_id`);
CREATE INDEX `idx_doctor_start_date` ON `doctors`(`start_date`);
CREATE INDEX `idx_doctor_specialization` ON `doctors`(`specialization`);

-- nurses table
CREATE INDEX `idx_nurse_department` ON `nurses`(`department_id`);
CREATE INDEX `idx_nurse_doctor` ON `nurses`(`doctor_id`);
CREATE INDEX `idx_nurse_start_date` ON `nurses`(`start_date`);


-- patients table
CREATE INDEX `idx_patient_department` ON `patients`(`department_id`);
CREATE INDEX `idx_patient_nurse` ON `patients`(`nurse_id`);
CREATE INDEX `idx_patient_doctor` ON `patients`(`doctor_id`);
CREATE INDEX `idx_patient_admission_date` ON `patients`(`admission_date`);
CREATE INDEX `idx_patient_discharge_date` ON `patients`(`discharge_date`);


-- adminstrative staff table
CREATE INDEX `idx_admin_role` ON `adminstrative_staff`(`role`);
CREATE INDEX `idx_admin_start_date` ON `adminstrative_staff`(`start_date`);


-- appointments table
CREATE INDEX `idx_appointment_patient` ON `appointments`(`patient_id`);
CREATE INDEX `idx_appointment_doctor` ON `appointments`(`doctor_id`);
CREATE INDEX `idx_appointment_date` ON `appointments`(`appointment_date`);


-- medications table
CREATE INDEX `idx_medication_name` ON `medications`(`name`);


-- prescriptions table
CREATE INDEX `idx_prescription_patient` ON `prescriptions`(`patient_id`);
CREATE INDEX `idx_prescription_medication` ON `prescriptions`(`medication_id`);
CREATE INDEX `idx_prescription_doctor` ON `prescriptions`(`doctor_id`);
CREATE INDEX `idx_prescription_prescribed_date` ON `prescriptions`(`prescribed_date`);