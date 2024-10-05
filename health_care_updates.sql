-- update a nurse's assigned doctor
UPDATE nurses
SET doctor_id = 5
WHERE id = 1;

-- update a patient's case information
UPDATE patients
SET case = 'Severe headaches, requiring follow-up'
WHERE id = 4;

-- update a medication's side effects
UPDATE medications
SET side_effects = 'Dizziness, Drowsiness'
WHERE id = 1;

-- change a doctor's role
UPDATE doctors
SET role = 'Senior Physician'
WHERE id = 4;

-- update the admission date for a patient
UPDATE patients
SET admission_date = '2024-09-27'
WHERE id = 5;

-- update the reason for a specific appointment
UPDATE appointments
SET reason = 'Initial neurology consultation'
WHERE id = 1;

-- update an administrative staff member's contact number
UPDATE adminstrative_staff
SET contact_number = '555-555-5555'
WHERE id = 1;

-- update a doctor's specialization
UPDATE doctors
SET specialization = 'Pediatric Neurologist'
WHERE id = 1;
