-- insert new departments
INSERT INTO departments (name, location) VALUES 
('Neurology', 'Building D'),
('Dermatology', 'Building E');

-- insert new doctors
INSERT INTO doctors (first_name, last_name, department_id, start_date, role, specialization, contact_number) VALUES 
('Robert', 'Lee', 4, '2022-05-01', 'Attending Physician', 'Neurologist', '123-321-4321'),
('Laura', 'Wilson', 5, '2023-01-20', 'Attending Physician', 'Dermatologist', '456-654-7890');

-- insert new nurses
INSERT INTO nurses (first_name, last_name, department_id, start_date, doctor_id) VALUES 
('Olivia', 'Clark', 4, '2023-02-15', 4),
('Liam', 'Lewis', 5, '2023-03-10', 5);

-- insert new patients
INSERT INTO patients (first_name, last_name, department_id, case, nurse_id, doctor_id, admission_date) VALUES 
('Sophia', 'Hernandez', 4, 'Severe migraines', 4, 4, '2024-09-28'),
('Ethan', 'Garcia', 5, 'Skin rash', 5, 5, '2024-09-29');

-- insert new appointments
INSERT INTO appointments (patient_id, doctor_id, appointment_date, reason) VALUES 
(4, 4, '2024-09-30 10:30:00', 'Neurology follow-up'),
(5, 5, '2024-09-30 11:00:00', 'Dermatology consultation');

-- insert new medications
INSERT INTO medications (name, `use`, side_effects) VALUES 
('Gabapentin', 'Nerve pain relief', 'Dizziness, Fatigue'),
('Hydrocortisone', 'Anti-inflammatory cream', 'Burning sensation');

-- insert new prescriptions
INSERT INTO prescriptions (patient_id, medication_id, doctor_id, dosage, prescribed_date) VALUES 
(4, 1, 4, '300 mg', '2024-09-29'),
(5, 2, 5, 'Apply twice daily', '2024-09-30');

-- insert new administrative staff
INSERT INTO adminstrative_staff (first_name, last_name, start_date, role, contact_number) VALUES 
('David', 'Walker', '2022-10-01', 'Receptionist', '789-456-1230'),
('Emma', 'Roberts', '2023-04-20', 'Billing Specialist', '321-654-9870');
