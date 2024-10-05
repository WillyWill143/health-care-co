CREATE TABLE `health_care_co`.`departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `health_care_co`.`doctors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `department_id` int DEFAULT NULL,
  `start_date` date NOT NULL,
  `role` varchar(100) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`)
);


CREATE TABLE `health_care_co`.`nurses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `department_id` int DEFAULT NULL,
  `start_date` date NOT NULL,
  `doctor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (department_id) REFERENCES departments(id),
  FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);


CREATE TABLE `health_care_co`.`patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `department_id` int DEFAULT NULL,
  `case` longtext,
  `nurse_id` int DEFAULT NULL,
  `doctor_id` int DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (department_id) REFERENCES departments(id),
  FOREIGN KEY (nurse_id) REFERENCES nurses(id),
  FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);


CREATE TABLE `health_care_co`.`adminstrative_staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `role` varchar(100) NOT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `health_care_co`.`appointments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `appointment_date` datetime NOT NULL,
  `reason` longtext,
  PRIMARY KEY (`id`),
  FOREIGN KEY (patient_id) REFERENCES patients(id),
  FOREIGN KEY (doctor_id) REFERENCES doctors(id)
);


CREATE TABLE `health_care_co`.`medications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `use` mediumtext,
  `side_effects` mediumtext,
  PRIMARY KEY (`id`)
);


CREATE TABLE `health_care_co`.`prescriptions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `medication_id` int NOT NULL,
  `doctor_id` int NOT NULL,
  `dosage` varchar(100) NOT NULL,
  `prescribed_date` date NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (patient_id) REFERENCES patients(id),
  FOREIGN KEY (medication_id) REFERENCES medications(id),
  FOREIGN KEY (doctor_id) REFERENCES doctors(id) 
);
