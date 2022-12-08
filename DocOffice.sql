
CREATE DATABASE DocOffice;

USE DocOffice;

CREATE TABLE DOCTOR (
Doctor_ID char(7) NOT NULL, -- PRIMARY KEY
Last_name varchar(15) NOT NULL,
First_name varchar(15) NOT NULL,
Phone_num varchar(15) NOT NULL,
Specialty varchar(30) NOT NULL,
Salary DEC(10, 2),
City varchar(25) NOT NULL, -- just added for functionality
PRIMARY KEY (Doctor_ID)
);

CREATE TABLE PATIENT (
SSN char(11) NOT NULL, -- PRIMARY KEY
Last_name varchar(15),
First_name varchar(15),
Primary_phone_num varchar(15),
Street_name varchar(30),
Street_number varchar(4),
City varchar(25),
Zip_code varchar(5),
Insurance_ID varchar(10) NOT NULL,
PRIMARY KEY(SSN)
);

CREATE TABLE MEDICAL_TEST(
Test_ID varchar(9) NOT NULL, -- PRIMARY KEY
Doctor_name varchar(20) NOT NULL,
Doctor_ID char(7) NOT NULL,
Test_type varchar(20) NOT NULL,
Result varchar(10) NOT NULL,
Patient_ssn char(11) NOT NULL,
Date_given Date NOT NULL,
PRIMARY KEY (Test_ID),
FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID),
FOREIGN KEY (Patient_ssn) REFERENCES PATIENT(SSN)
-- FOREIGN KEY (Date_given) REFERENCES APPOINTMENT(Date)
);

CREATE TABLE APPOINTMENT(
Appointment_num varchar(7) NOT NULL, -- PRIMARY KEY
Test_given varchar(9) NOT NULL,
Patient_ssn char(11) NOT NULL,
Doctor_name varchar(20) NOT NULL,
Doctor_ID varchar(10) NOT NULL,
Time Time,
Date Date,
Room_num char(2) NOT NULL,
PRIMARY KEY (Appointment_num),
FOREIGN KEY (Test_given) REFERENCES MEDICAL_TEST(Test_ID),
FOREIGN KEY (Patient_ssn) REFERENCES PATIENT(SSN),
FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)
);

CREATE TABLE PRESCRIPTION(
Prescription_ID varchar(10) NOT NULL,
Drug_name varchar(25),
Dosage varchar(80),
number_of_refills varchar(2),
Date_prescribed DATE NOT NULL,
Most_recent_filling DATE NOT NULL,
Prescribed_by char(7) NOT NULL,
Patient_ssn char(11) NOT NULL,
PRIMARY KEY (Prescription_ID),
FOREIGN KEY (Prescribed_by) REFERENCES DOCTOR(Doctor_ID),
FOREIGN KEY (Patient_ssn) REFERENCES PATIENT(SSN)
);

CREATE TABLE AUDIT(
Doctor_ID char(7) NOT NULL,
Doctor_name varchar(15) NOT NULL,
Action  varchar(20) NOT NULL,
Specialty varchar(30) NOT NULL,
Date_modified DATE,
FOREIGN KEY (Doctor_ID) REFERENCES DOCTOR(Doctor_ID)
);


INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("JF14775", "Ferguson", "John", "(217)-490-2552", "Orthopedics", 511000.00, "Fullerton");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("CG94027", "Green", "Camille", "(515)-259-1445", "Cardiology", 438000.00, "Santa Ana");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("OR80917", "Rodriguez", "Omar", "(307)-486-9912", "Neurology", 280000.00, "Irvine");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("EW24128", "Watson", "Emma", "(510)-534-7698", "Psychiatry", 268000.00, "Fullerton");


INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("IS17497", "Silva", "Isabella", "(215)-357-8823", "Diabetes", 236000.00, "Buena Park");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("ER33631", "Randall", "Ethan", "(568)-722-2308", "Pediatrics", 232000.00, "Tustin");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("SW27448", "Wilkins", "Sebastian", "(623)-229-2804", "Cardiology", 412000.00, "Fullerton");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("RS43641", "Stevens", "Robert", "(253)-477-2109", "Pediatrics", 207000.00, "Anaheim");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("EB48508", "Burton", "Ellie", "(208)-750-2266", "Infectious Diseases", 246000.00, "Fullerton");

INSERT INTO DOCTOR(Doctor_ID, Last_name, First_name, Phone_num, Specialty, Salary, City)
VALUES("RS99301", "Santiago", "Ryan", "(718)-517-9107", "Immunology", 301000.00, "Santa Ana"); -- (10 Entries) 


INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID) -- PATIENTS
VALUES("576-67-2311", "Nicholson", "Angelica", "(437)-647-4445", "Lime Street", "8483", "Pomona", "95111", "7571665788");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("429-10-0005", "Chen", "Tyler", "(225)-778-6428", "Pinfold Lane", "7852", "Irvine", "95687", "2701485331");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("247-50-6314", "Barajas", "Jayleen", "(651)-417-1558", "Fourth Avenue", "568", "Oxnard", "90022", "5584904448");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("502-42-6410", "Walters", "Kelvin", "(360)-975-7330", "Mary Street", "9488", "Bellflower", "94122", "9929780235");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("478-52-7614", "Brooks", "Wendy", "(616)-594-3794", "Orchard Way", "244", "Fullerton", "93906", "5223507398"); -- 5

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("680-20-5183", "Zhang", "Livia", "(816)-739-8377", "Lincoln Road", "7067", "Santa Ana", "92882", "4336278535");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("135-05-2077", "Pollard", "Logan", "(479)-652-3521", "Oakwood Close", "443", "Lake Forest", "92083", "2455854466");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("430-96-5630", "Cantrell", "Ivan", "(580)-406-5493", "St. John Street", "8201", "Buena Park", "95828", "2624080784");-- 8

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("506-82-3169", "Vargas", "rachel", "(802)-824-0612", "Queen Road", "316", "Garden Grove", "95376", "9579957321");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("212-37-7116", "Rodgers", "Seth", "(210)-671-4756", "Balmoral Drive", "199", "Santa Ana", "93033", "3185553963"); -- 10

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("519-17-7218", "Lewis", "Theresa", "(978)-582-0312", "Seymour Road", "750", "Anaheim", "90026", "4150744145");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("233-38-3899", "Wiley", "Hana", "(520)-638-6149", "Bishops Close", "694", "Fullerton", "93307", "6094285000");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("575-62-9155", "Lowe", "Parker", "(304)-682-7667", "Gipsy Lane", "957", "Tustin", "94601", "4079415588"); 

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("269-72-1140", "Hammond", "Brice", "(248)-349-5091", "Canistan Gardens", "8113", "Santa Ana", "91911", "9019952587");

INSERT INTO PATIENT(SSN, Last_name, First_name, Primary_phone_num, Street_name, Street_number, City, Zip_code, Insurance_ID)
VALUES("426-96-4929", "Mccarty", "Alan", "(503)-202-4370", "Victoria Terrace", "528", "Fullerton", "92805", "1219358483"); -- 15

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN) -- YEAR/MONTH/DAY FORMAT
VALUES ("VET8P88458", "Vicodin", "Take 1 tablet every 4 to 6 hours, no more than 8 every 24 hours.", "2", "2021-12-01", "2022-01-01", "JF14775", "576-67-2311");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("VQW8727557", "Atorvastatin", "Take 10mg, no more than 80mg every 24 hours.", "1", "2021-11-15", "2021-12-16", "CG94027", "429-10-0005");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("DHW9X6546K", "Metformin", "Take 5mL twice a day.", "2", "2022-07-04", "2022-02-28", "IS17497", "502-42-6410");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("927NEKFQYA", "Lisinopril", "Take 10mg a day", "3", "2022-01-31", "2022-02-28", "ER33631", "247-50-6314");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("7877GD27SV", "Gabapentin", "Take 300mg 3 times a day, not more than 18000 mg every 24 hours.", "3", "2022-03-07", "2022-04-08", "SW27448", "430-96-5630");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("HM8GR52Y2D", "Vicodin", "Take 2 tablets every 6 hours, no more than 8 every 24 hours.", "1", "2022-05-12", "2022-06-14", "OR80917", "426-96-4929");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("YVF372ABDF", "Acetaminophen", "Take 2 pills every 4 to 6 hours, not more than 10 pills in 24 hours.", "2", "2021-12-29", "2022-01-28", "RS43641", "269-72-1140");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("37YU2JSJK4", "Sertraline", "At first, take 50mg once a day in the morning, then 100mg after 3 days.", "4", "2022-02-14", "2022-03-12", "EW24128", "575-62-9155");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("J3TG28V3KB", "Trazodone", "At first, 150mg per day, given in divided doses.", "3", "2022-02-01", "2022-03-02", "EB48508", "233-38-3899");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("B4GQG24GU5", "Meloxicam", "At first, 5mg once a day, no more than 10ng every 24 hours.", "2", "2022-09-12", "2022-10-12", "RS43641", "519-17-7218");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("33D8K764YG", "Insulin Glargine", "Take .4 to 1 unit per kg per 24 hours.", "2", "2022-10-08", "2022-11-09", "JF14775", "576-67-2311");


INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("56Z244A4AM", "Ibuprofen", "First, take 200mg to 400mg orally every 4 to 6 hours as needed.", "2", "2022-06-22", "2022-07-21", "RS99301", "429-10-0005");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("97K8BYJRGN", "Zolpidem", "Take 6.25mg(for women) or 12.5mg(for men) once a day at bedtime.", "1", "2022-07-13", "2022-08-13", "RS43641", "247-50-6314");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("R8DQ85867E", "Zoloft", "At first, take 50mg once a day or evening.", "3", "2022-04-24", "2022-05-21", "EW24128", "135-05-2077");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("N5G44DW8RE", "Lexapro", "Take 10mg a day either in the morning or evening.", "3", "2022-07-23", "2022-08-21", "EW24128", "430-96-5630");

INSERT INTO PRESCRIPTION(Prescription_ID, Drug_name, Dosage, number_of_refills, Date_prescribed, Most_recent_filling, Prescribed_by, Patient_SSN)
VALUES ("99QDE45YM5", "Vicodin", "Take 1 or 2 tablets every 4-6 hours, no more than 8 every 23 hours.", "1", "2022-08-05", "2022-09-03", "JF14775", "680-20-5183"); -- 15 entries 

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("W794K", "John", "JF14775", "Biopsy", "Positive", "576-67-2311","2022-01-28");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("J48Q5", "Camille", "CG94027", "Colonoscopy", "Negative", "429-10-0005","2022-02-03");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("973Y5", "Ethan", "ER33631", "CT scan", "Negative", "247-50-6314","2022-02-21");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("Z9832", "Sebastian", "SW27448", "Gastroscopy", "Positive", "430-96-5630","2022-04-12");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("434XP", "Ryan", "RS99301", "MRI scan", "Positive", "429-10-0005","2022-08-16");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("4E37E", "Emma", "EW24128", "Psychiatrict", "Positive", "135-05-2077","2022-08-25");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("4PP55", "John", "JF14775", "PET scan", "Negative", "680-20-5183","2022-09-21");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("U3236", "Ryan", "RS99301", "Ultrasound", "Negative", "519-17-7218","2022-11-17");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("8492B", "John", "JF14775", "Colonoscopy", "Positive", "576-67-2311","2022-11-29");

INSERT INTO MEDICAL_TEST(Test_ID, Doctor_name, Doctor_ID, Test_type, Result, Patient_ssn, Date_given)
VALUES ("2567U", "Isabella", "IS17497", "CT scan", "Positive", "506-82-3169","2022-12-13");

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)-- 1
VALUES ("#192123", "W794K", "576-67-2311", "John", "JF14775", "13:30:00", "2022-01-28", 4);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#830255", "J48Q5", "429-10-0005", "Camille", "CG94027", "14:30:00", "2022-02-03", 3);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#005618", "973Y5", "247-50-6314", "Ethan", "ER33631", "9:00:00", "2022-02-21", 1);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#979944", "Z9832", "430-96-5630", "Sebastian", "SW27448", "11:15:00", "2022-04-12", 2);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num) 
VALUES ("#411083", "434XP", "429-10-0005", "Ryan", "RS99301", "13:30:00", "2022-08-16", 4);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num) -- 6
VALUES ("#243132", "4E37E", "135-05-2077", "Emma", "EW24128", "15:00:00", "2022-08-25", 2);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#649218", "4PP55", "680-20-5183", "John", "JF14775", "10:30:00", "2022-09-21", 3);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#856926", "U3236", "519-17-7218", "Ryan", "RS99301", "12:00:00", "2022-11-17", 1);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#701100", "8492B", "576-67-2311", "John", "JF14775", "13:30:00", "2022-11-29", 1);

INSERT INTO APPOINTMENT(Appointment_num, Test_given, Patient_ssn, Doctor_name, Doctor_ID, Time, Date, Room_num)
VALUES ("#096206", "2567U", "506-82-3169", "Isabella", "IS17497", "10:30:00", "2022-12-01", 4);
