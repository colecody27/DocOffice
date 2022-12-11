USE DocOffice;

-- 2 
CREATE VIEW connect AS 
SELECT Patient_ssn, Doctor_ID
FROM MEDICAL_TEST
UNION 
SELECT Patient_ssn, Doctor_ID
FROM APPOINTMENT 
UNION 
SELECT Patient_ssn, Prescribed_by
FROM PRESCRIPTION; 

CREATE VIEW doctorsPatients AS
SELECT PATIENT.First_name, Primary_phone_num
FROM PATIENT INNER JOIN (
SELECT DISTINCT Patient_ssn 
FROM connect, DOCTOR
WHERE DOCTOR.Doctor_ID = connect.Doctor_ID AND DOCTOR.First_name = "Robert") AS BLAH
ON PATIENT.SSN = BLAH.Patient_ssn;


-- 3 
CREATE VIEW vicodinDoctors AS
SELECT First_name, Last_name
FROM DOCTOR 
INNER JOIN (
	SELECT DISTINCT Prescribed_by
	FROM PRESCRIPTION
	WHERE Drug_name = "Vicodin") AS BLAH
ON Doctor_ID = Prescribed_by;
    
    
-- 4 
CREATE VIEW docs AS 
SELECT First_name, Last_name, Specialty
FROM DOCTOR;


-- 5 
CREATE VIEW DoctorSpecialty AS 
SELECT First_name, Last_name, Specialty
FROM DOCTOR;

-- 6 
CREATE TRIGGER specialtyUpdate
AFTER UPDATE 
ON DoctorSpecialty
FOR EACH ROW 
	INSERT INTO AUDIT(Doctor_ID, Doctor_name, Action, Specialty, Date_modified)
	VALUES(new.Doctor_ID, new.First_name, new.Last_name, "Update", new.Specialty, now());
    
-- 7 
DROP TABLE IF EXISTS `DOCTORBACKUP`;
CREATE TABLE DOCTORBACKUP AS 
SELECT * 
FROM DOCTOR;

DROP TABLE IF EXISTS `PATIENTBACKUP`;
CREATE TABLE PATIENTBACKUP AS 
SELECT * 
FROM PATIENT;

DROP TABLE IF EXISTS `MEDICAL_TESTBACKUP`;
CREATE TABLE MEDICAL_TESTBACKUP AS 
SELECT * 
FROM MEDICAL_TEST;

DROP TABLE IF EXISTS `APPOINTMENTBACKUP`;
CREATE TABLE APPOINTMENTBACKUP AS 
SELECT * 
FROM APPOINTMENT;

DROP TABLE IF EXISTS `PRESCRIPTIONBACKUP`;
CREATE TABLE PRESCRIPTIONBACKUP AS 
SELECT * 
FROM PRESCRIPTION;

DROP TABLE IF EXISTS `AUDITBACKUP`;
CREATE TABLE AUDITBACKUP AS 
SELECT * 
FROM AUDIT;



