CREATE TABLE DEPARTMENT
(departmentID NUMBER(5) NOT NULL,
departmentName VARCHAR2(23),
block VARCHAR2(1),
floor NUMBER(1),
room NUMBER(2),
CONSTRAINT DEPARTMENT_departmentID_pk PRIMARY KEY (departmentID),
CONSTRAINT DEPARTMENT_check_ID CHECK (LENGTH(departmentID) = 5));

INSERT INTO DEPARTMENT VALUES (64591, 'Anatomy', 'A', 2, 16);
INSERT INTO DEPARTMENT VALUES (57247, 'Physiology', 'B', 4, 42);
INSERT INTO DEPARTMENT VALUES (42354, 'Brain Surgery', 'C', 3, 33);
INSERT INTO DEPARTMENT VALUES (19510, 'Manager', 'A', 4, 41);
INSERT INTO DEPARTMENT VALUES (33180, 'General Surgery', 'C', 4, 44);
INSERT INTO DEPARTMENT VALUES (75820, 'Cardiovascular', 'C', 4, 45);
INSERT INTO DEPARTMENT VALUES (32337, 'Orthopedic', 'D', 3, 31);
INSERT INTO DEPARTMENT VALUES (79170, 'Pathology', 'D', 2, 25);
INSERT INTO DEPARTMENT VALUES (43672, 'Urology', 'D', 1, 17);
INSERT INTO DEPARTMENT VALUES (35928, 'Medical Oncology', 'C', 2, 24);
INSERT INTO DEPARTMENT VALUES (44248, 'Radiology', 'B', 1, 13);
INSERT INTO DEPARTMENT VALUES (79745, 'Cardiology', 'A', 2, 26);
INSERT INTO DEPARTMENT VALUES (71595, 'Neurology', 'A', 2, 27);
INSERT INTO DEPARTMENT VALUES (20961, 'Student', 'D', 4, 46);
INSERT INTO DEPARTMENT VALUES (33545, 'Plastic Surgery', 'C', 1, 17);
INSERT INTO DEPARTMENT VALUES (94184, 'Maid', 'E', 2, 29);
INSERT INTO DEPARTMENT VALUES (86930, 'Health Technician', 'B', 2, 28);
INSERT INTO DEPARTMENT VALUES (84671, 'Emergency Technician', 'B', 3, 31);
INSERT INTO DEPARTMENT VALUES (95507, 'Security', 'E', 1, 11);
INSERT INTO DEPARTMENT VALUES (21354, 'Nurse', 'D', 1, 18);


CREATE TABLE PERSONNEL
(personnelID NUMBER(7) NOT NULL,
personnelFirstName VARCHAR2(20),
personnelLastName VARCHAR2(20),
personnelCounty VARCHAR2(15),
personnelPassword VARCHAR2(9) NOT NULL,
departmentID NUMBER(5) NOT NULL,
CONSTRAINT PERSONNEL_personnelID_pk PRIMARY KEY(personnelID),
CONSTRAINT PERSONNEL_departmentID_fk FOREIGN KEY (departmentID) REFERENCES DEPARTMENT(departmentID),
CONSTRAINT PERSONNEL_check_ID CHECK ((LENGTH(departmentID) = 5) AND (LENGTH(personnelID) = 7)));

INSERT INTO PERSONNEL VALUES (6397229, 'Halit', 'Özdoğan', 'Balçova', 'ZHfxjDg6', 64591);
INSERT INTO PERSONNEL VALUES (5628060, 'Gökalp', 'Erez', 'Gaziemir', 'cA8H6aZS', 57247);
INSERT INTO PERSONNEL VALUES (4646138, 'Yıldız', 'Özkök', 'Güzelbahçe', 'DDfqT6bl', 42354);
INSERT INTO PERSONNEL VALUES (1214861, 'Gülbahar', 'Yetkiner', 'Balçova', 'iJUesVRw', 19510);
INSERT INTO PERSONNEL VALUES (3050477, 'Selma', 'Kumcuoğlu', 'Karşıyaka', 'ObhL3vzt', 33180);
INSERT INTO PERSONNEL VALUES (7725987, 'Muharrem', 'Bakırcıoğlu', 'Narlıdere', 'pKT8ZRjd', 75820);
INSERT INTO PERSONNEL VALUES (3575147, 'Bekir', 'Abadan', 'Buca', 'YE8F0cCH', 32337);
INSERT INTO PERSONNEL VALUES (7647512, 'Berçin', 'Akal', 'Karabağlar', 'Tak74EWW', 79170);
INSERT INTO PERSONNEL VALUES (4081691, 'Özgür', 'Küçükler', 'Buca', 'gKaIMgOv', 43672);
INSERT INTO PERSONNEL VALUES (3756986, 'Cevahir', 'Atakol', 'Narlıdere', 'RjnCZnfK', 35928);
INSERT INTO PERSONNEL VALUES (4858286, 'Yonca', 'Ekşioğlu', 'Menderes', 'CUm0NylA', 44248);
INSERT INTO PERSONNEL VALUES (7493218, 'Emel', 'Özberk', 'Bayraklı', '66U9LzJW', 79745);
INSERT INTO PERSONNEL VALUES (7030369, 'Selin', 'Küçükler', 'Buca', 'NUOYpzXz', 71595);
INSERT INTO PERSONNEL VALUES (1583815, 'Tülin', 'Taşçı', 'Narlıdere', 'iul0FaE2', 20961);
INSERT INTO PERSONNEL VALUES (3121301, 'Seçkin', 'Akay', 'Güzelbahçe', 'SOcmFZZb', 33545);
INSERT INTO PERSONNEL VALUES (9944728, 'Özlem', 'Kocabıyık', 'Balçova', 'Ee1nDN82', 94184);
INSERT INTO PERSONNEL VALUES (8544717, 'Aytekin', 'Erdoğan', 'Gaziemir', 'gvOpuesE', 86930);
INSERT INTO PERSONNEL VALUES (8990191, 'Sevil', 'Denkel', 'Karşıyaka', '2etiPRAl', 84671);
INSERT INTO PERSONNEL VALUES (9713458, 'Fikri', 'Atan', 'Çiğli', 'XttjMdOG', 95507);
INSERT INTO PERSONNEL VALUES (2633048, 'Berre', 'Tahincioğlu', 'Konak', 'dkWAUwym', 21354);

             
CREATE TABLE PATIENT
(patientID NUMBER(11) NOT NULL,
patientFirstName VARCHAR2(20),
patientLastName VARCHAR2(20),
patientCounty VARCHAR2(15),
patientPassword VARCHAR2(9) NOT NULL,
CONSTRAINT PATIENT_patientID_pk PRIMARY KEY(patientID),
CONSTRAINT PATIENT_check_ID CHECK (LENGTH(patientID) = 11));

INSERT INTO PATIENT VALUES (10125341490, 'Mahmut', 'Akbulut', 'Gaziemir', '5Ql36Dab9');
INSERT INTO PATIENT VALUES (17863191400, 'Nazlı', 'Numanoğlu', 'Karşıyaka', 'txsaLWcao');
INSERT INTO PATIENT VALUES (78234444242, 'Doğaner', 'Menemencioğlu', 'Balçova', 'uKC96fdXU');
INSERT INTO PATIENT VALUES (51671341480, 'Ümmiye', 'Dizdar', 'Menderes', 'VHg3xJpJI');
INSERT INTO PATIENT VALUES (51710894724, 'Nesim', 'Akışık', 'Narlıdere', 'wkuAhgjGJ');
INSERT INTO PATIENT VALUES (31846835884, 'Tülay', 'Özdenak', 'Buca', '4jBFKthTO');
INSERT INTO PATIENT VALUES (54459228638, 'Yılmaz', 'Arslanoğlu', 'Gaziemir', 'qzXNPqk6m');
INSERT INTO PATIENT VALUES (50190904312, 'Rengin', 'Arıcan', 'Güzelbahçe', 'zvgNHv9vQ');
INSERT INTO PATIENT VALUES (91979445862, 'Ercan', 'Gümüşpala', 'Urla', '9PszNKmJI');
INSERT INTO PATIENT VALUES (61296104650, 'Ahenk', 'Özbir', 'Konak', 'E0akHSYwi');
INSERT INTO PATIENT VALUES (46742100868, 'Perver', 'Okur', 'Çiğli', 'zLWsokERD');
INSERT INTO PATIENT VALUES (12848485000, 'Gökşin', 'Denkel', 'Narldıre', 'RJr8AIDcw');
INSERT INTO PATIENT VALUES (27162493778, 'Mesut', 'Kasapoğlu', 'Balçova', 'x5ikWVavj');
INSERT INTO PATIENT VALUES (21371208666, 'Esin', 'Türkyılmaz', 'Menderes', 'uEfZDmp3J');
INSERT INTO PATIENT VALUES (13359888410, 'Günay', 'Tokgöz', 'Gaziemir', 'BHIk0riod');
INSERT INTO PATIENT VALUES (36656433152, 'Dilhan', 'Korol', 'Balçova', 'MlPIgJO6U');
INSERT INTO PATIENT VALUES (16848115554, 'Perver', 'Uluhan', 'Buca', 'uLSqMpNwA');
INSERT INTO PATIENT VALUES (38151885290, 'Vicdan', 'Avan', 'Karşıyaka', 'FhKFimgEP');
INSERT INTO PATIENT VALUES (17611360072, 'Sinan', 'Akyüz', 'Narlıdere', 'LmUyCovDw');
INSERT INTO PATIENT VALUES (93408001274, 'İrem', 'Gürmen', 'Urla', 'xcVru1enA');


CREATE TABLE MEDICINE
(medicineID NUMBER(4) NOT NULL,
medicineName VARCHAR2(20) NOT NULL,
medicineDose VARCHAR2(12),
medicinePrice NUMBER(5, 2),
CONSTRAINT MEDICINE_medicineName_uk UNIQUE(medicineName),
CONSTRAINT MEDICINE_medicineID_pk PRIMARY KEY(medicineID),
CONSTRAINT MEDICINE_check_ID CHECK (LENGTH(medicineID) = 4));

INSERT INTO MEDICINE VALUES (4336, 'Beloc Zok', '50 mg', 54.08);
INSERT INTO MEDICINE VALUES (7528, 'Coraspin', '100 mg', 17.69);
INSERT INTO MEDICINE VALUES (5088, 'Majezik', '1000 mg', 43.41);
INSERT INTO MEDICINE VALUES (6880, 'Dolorex', '50 mg', 44.49);
INSERT INTO MEDICINE VALUES (5856, 'Travazol', '1000 mg', 60.00);
INSERT INTO MEDICINE VALUES (3369, 'Parol', '500 mg', 17.44);
INSERT INTO MEDICINE VALUES (1058, 'Arveles', '25 mg', 29.96);
INSERT INTO MEDICINE VALUES (7921, 'Iespor', '1000 mg', 21.83);
INSERT INTO MEDICINE VALUES (6428, 'Dolven Pediyatrik', '100 ml', 38.40);
INSERT INTO MEDICINE VALUES (4697, 'Voltaren', '1000 mg', 45.86);
INSERT INTO MEDICINE VALUES (7548, 'Lansor', '30 mg', 69.35);
INSERT INTO MEDICINE VALUES (5827, 'Nurofen Cold', '1000 mg', 19.33);
INSERT INTO MEDICINE VALUES (5543, 'Nexium', '40 mg', 111.36);
INSERT INTO MEDICINE VALUES (2722, 'Multisef', '75 mg', 55.52);
INSERT INTO MEDICINE VALUES (2373, 'Nootropil', '800 mg', 54.54);
INSERT INTO MEDICINE VALUES (1597, 'Gaviscon', '1000 mg', 29.07);
INSERT INTO MEDICINE VALUES (5565, 'Iburamin', '1000 mg', 45.62);
INSERT INTO MEDICINE VALUES (1304, 'Oksamnen–L', '200 mg', 30.92);
INSERT INTO MEDICINE VALUES (3803, 'Cold', '1000 mg', 88.00);
INSERT INTO MEDICINE VALUES (6291, 'Glifor', '1000 mg', 83.50);


alter session set nls_language='ENGLISH';
alter session set nls_date_format='DD-MON-YYYY';

CREATE TABLE DIAGNOSIS
(diagnosisID NUMBER(3) NOT NULL,
diagnosisDate DATE,
personnelID NUMBER(7),
patientID NUMBER(11),
CONSTRAINT DIAGNOSIS_personnelID_fk FOREIGN KEY (personnelID) REFERENCES PERSONNEL (personnelID),
CONSTRAINT DIAGNOSIS_patientID_fk FOREIGN KEY (patientID) REFERENCES PATIENT (patientID),
CONSTRAINT DIAGNOSIS_check_ID CHECK ((LENGTH(personnelID) = 7) AND (LENGTH(patientID) = 11)),
CONSTRAINT DIAGNOSIS_check_ID_2 CHECK (LENGTH(diagnosisID) = 3),
CONSTRAINT DIAGNOSIS_check_perID CHECK (SUBSTR(personnelID, 1, 1) IN ('3', '4', '5', '6', '7')));

INSERT INTO DIAGNOSIS VALUES
(924, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 6397229, 10125341490);
INSERT INTO DIAGNOSIS VALUES
(459, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 5628060, 17863191400);
INSERT INTO DIAGNOSIS VALUES
(348, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 4646138, 78234444242);
INSERT INTO DIAGNOSIS VALUES
(892, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 3050477, 51671341480);
INSERT INTO DIAGNOSIS VALUES
(117, 
TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), 7725987, 51710894724);
INSERT INTO DIAGNOSIS VALUES
(229, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 3575147, 31846835884);
INSERT INTO DIAGNOSIS VALUES
(827, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 7647512, 54459228638);
INSERT INTO DIAGNOSIS VALUES
(679, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 4081691, 50190904312);
INSERT INTO DIAGNOSIS VALUES
(476, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 3756986, 91979445862);
INSERT INTO DIAGNOSIS VALUES
(204, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 4858286, 61296104650);
INSERT INTO DIAGNOSIS VALUES
(211, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 7493218, 46742100868);
INSERT INTO DIAGNOSIS VALUES
(559, 
TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), 7030369, 12848485000);
INSERT INTO DIAGNOSIS VALUES
(673, 
TO_DATE('10-JAN-2023', 'DD-MON-YYYY'), 3121301, 27162493778);
INSERT INTO DIAGNOSIS VALUES
(887, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 3575147, 21371208666);
INSERT INTO DIAGNOSIS VALUES
(276, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 6397229, 13359888410);
INSERT INTO DIAGNOSIS VALUES
(677, 
TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), 5628060, 36656433152);
INSERT INTO DIAGNOSIS VALUES
(304, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 4646138, 16848115554);
INSERT INTO DIAGNOSIS VALUES
(386, 
TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), 3050477, 38151885290);
INSERT INTO DIAGNOSIS VALUES
(170, 
TO_DATE('06-JAN-2023', 'DD-MON-YYYY'), 7725987, 17611360072);
INSERT INTO DIAGNOSIS VALUES
(637, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 3575147, 93408001274);


CREATE TABLE APPOINTMENTS
(appointmentID NUMBER(2) NOT NULL,
appointmentDate DATE,
appointmentTime VARCHAR2(5),
departmentID NUMBER(5),
patientID NUMBER(11),
CONSTRAINT APPOINTMENTS_appointmentID_pk PRIMARY KEY(appointmentID),
CONSTRAINT APPOINTMENTS_departmentID_fk FOREIGN KEY (departmentID) REFERENCES DEPARTMENT (departmentID),
CONSTRAINT APPOINTMENTS_patientID_fk FOREIGN KEY (patientID) REFERENCES PATIENT (patientID),
CONSTRAINT APPOINTMENTS_check_ID CHECK ((LENGTH(departmentID) = 5) AND (LENGTH(patientID) = 11)),
CONSTRAINT APPOINTMENTS_check_ID_2 CHECK (LENGTH(appointmentID) = 2),
CONSTRAINT APPOINTMENTS_check_depID CHECK (SUBSTR(departmentID, 1, 1) IN ('3', '4', '5', '6', '7')));

INSERT INTO APPOINTMENTS VALUES
(69, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), '13.30', 64591, 10125341490);
INSERT INTO APPOINTMENTS VALUES
(53, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), '14.00', 57247, 17863191400);
INSERT INTO APPOINTMENTS VALUES
(56, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), '09.00', 42354, 78234444242);
INSERT INTO APPOINTMENTS VALUES
(91, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), '09.45', 33180, 51671341480);
INSERT INTO APPOINTMENTS VALUES
(49, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), '11.00', 75820, 51710894724);
INSERT INTO APPOINTMENTS VALUES
(71, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), '11.15', 32337, 31846835884);
INSERT INTO APPOINTMENTS VALUES
(74, 
TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), '10.15', 79170, 54459228638);
INSERT INTO APPOINTMENTS VALUES
(19, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), '15.00', 43672, 50190904312);
INSERT INTO APPOINTMENTS VALUES
(82, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), '14.00', 35928, 91979445862);
INSERT INTO APPOINTMENTS VALUES
(76, 
TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), '11.30', 44248, 61296104650);
INSERT INTO APPOINTMENTS VALUES
(54, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), '14.15', 79745, 46742100868);
INSERT INTO APPOINTMENTS VALUES
(99, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), '09.30', 71595, 12848485000);
INSERT INTO APPOINTMENTS VALUES
(79, 
TO_DATE('02-JAN-2023', 'DD-MON-YYYY'), '09.00', 33545, 27162493778);
INSERT INTO APPOINTMENTS VALUES
(42, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), '10.00', 64591, 21371208666);
INSERT INTO APPOINTMENTS VALUES
(48, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), '11.00', 57247, 13359888410);
INSERT INTO APPOINTMENTS VALUES
(46, 
TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), '10.45', 42354, 36656433152);
INSERT INTO APPOINTMENTS VALUES
(40, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), '09.30', 33180, 16848115554);
INSERT INTO APPOINTMENTS VALUES
(92, 
TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), '11.45', 75820, 38151885290);
INSERT INTO APPOINTMENTS VALUES
(85, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), '10.45', 32337, 17611360072);
INSERT INTO APPOINTMENTS VALUES
(59, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), '11.00', 79170, 93408001274);


CREATE TABLE PAYMENT
(paymentID NUMBER(8) NOT NULL,
paymentStatus VARCHAR2(12),
paymentAmount NUMBER(7, 2),
paymentDate DATE,
patientID NUMBER(11),
CONSTRAINT PAYMENT_paymentID_pk PRIMARY KEY(paymentID),
CONSTRAINT PAYMENT_patientID_fk FOREIGN KEY (patientID) REFERENCES PATIENT (patientID),
CONSTRAINT PAYMENT_check_ID CHECK ((LENGTH(paymentID) = 8) AND (LENGTH(patientID) = 11)));

INSERT INTO PAYMENT VALUES
(50900788, 'Credit-Card', 150.00, 
TO_DATE('24-DEC-2022', 'DD-MON-YYYY'), 10125341490);
INSERT INTO PAYMENT VALUES
(34297905, 'Credit-Card', 85.00, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 17863191400);
INSERT INTO PAYMENT VALUES
(66714206, 'Cash', 450.00, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 78234444242);
INSERT INTO PAYMENT VALUES
(75183309, 'Credit-Card', 300.00, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 51671341480);
INSERT INTO PAYMENT VALUES
(16753344, 'Cash', 250.00, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 51710894724);
INSERT INTO PAYMENT VALUES
(11383148, 'Cash', 125.00, 
TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 31846835884);
INSERT INTO PAYMENT VALUES
(29944259, 'Credit-Card', 100.00, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 54459228638);
INSERT INTO PAYMENT VALUES
(48577360, 'Cash', 140.00 , 
TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), 50190904312);
INSERT INTO PAYMENT VALUES
(46378602, 'Credit-Card', 300.00, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 91979445862);
INSERT INTO PAYMENT VALUES
(26694695, 'Credit-Card', 420.00, 
TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), 61296104650);
INSERT INTO PAYMENT VALUES
(46779085, 'Cash', 210.00, 
TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), 46742100868);
INSERT INTO PAYMENT VALUES
(65949823, 'Credit-Card', 115.00, 
TO_DATE('25-DEC-2022', 'DD-MON-YYYY'), 12848485000);
INSERT INTO PAYMENT VALUES
(51768163, 'Cash', 1000.00, 
TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 27162493778);
INSERT INTO PAYMENT VALUES
(12333408, 'Credit-Card', 150.00, 
TO_DATE('23-DEC-2022', 'DD-MON-YYYY'), 21371208666);
INSERT INTO PAYMENT VALUES
(24330975, 'Credit-Card', 85.00, 
TO_DATE('24-DEC-2022', 'DD-MON-YYYY'), 13359888410);
INSERT INTO PAYMENT VALUES
(55127199, 'Cash', 450.00, 
TO_DATE('23-DEC-2022', 'DD-MON-YYYY'), 36656433152);
INSERT INTO PAYMENT VALUES
(10782144, 'Cash', 300.00, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 16848115554);
INSERT INTO PAYMENT VALUES
(89839700, 'Credit-Card', 250.00, 
TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 38151885290);
INSERT INTO PAYMENT VALUES
(51279758, 'Cash', 125.00, 
TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 17611360072);
INSERT INTO PAYMENT VALUES
(11982746, 'Credit-Card', 100.50, 
TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 93408001274);


CREATE TABLE RECORDS
(recordID NUMBER(9) NOT NULL,
dateAdmitted DATE,
dateDischarged DATE,
patientID NUMBER(11),
CONSTRAINT RECORDS_recordID_pk PRIMARY KEY(recordID),
CONSTRAINT RECORDS_patientID_fk FOREIGN KEY (patientID) REFERENCES PATIENT (patientID),
CONSTRAINT RECORDS_check_ID CHECK ((LENGTH(recordID) = 9) AND (LENGTH(patientID) = 11)),
CONSTRAINT check_Date CHECK (dateAdmitted <= dateDischarged));

INSERT INTO RECORDS VALUES
(216999876, TO_DATE('24-DEC-2022', 'DD-MON-YYYY'), TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 10125341490);
INSERT INTO RECORDS VALUES
(538201581, TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 17863191400);
INSERT INTO RECORDS VALUES
(368134453, TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 78234444242);
INSERT INTO RECORDS VALUES
(478701993, TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 51671341480);
INSERT INTO RECORDS VALUES
(680977394, TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 51710894724);
INSERT INTO RECORDS VALUES
(734040277, TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 31846835884);
INSERT INTO RECORDS VALUES
(257350080, TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), 54459228638);
INSERT INTO RECORDS VALUES
(631364193, TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 50190904312);
INSERT INTO RECORDS VALUES
(693614228, TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), 91979445862);
INSERT INTO RECORDS VALUES
(821275519, TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), 61296104650);
INSERT INTO RECORDS VALUES
(297722154, TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 46742100868);
INSERT INTO RECORDS VALUES
(874682812, TO_DATE('25-DEC-2022', 'DD-MON-YYYY'), TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), 12848485000);
INSERT INTO RECORDS VALUES
(177439129, TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), TO_DATE('02-JAN-2023', 'DD-MON-YYYY'), 27162493778);
INSERT INTO RECORDS VALUES
(447840221, TO_DATE('23-DEC-2022', 'DD-MON-YYYY'), TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 21371208666);
INSERT INTO RECORDS VALUES
(802942160, TO_DATE('24-DEC-2022', 'DD-MON-YYYY'), TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 13359888410);
INSERT INTO RECORDS VALUES
(137616068, TO_DATE('23-DEC-2022', 'DD-MON-YYYY'), TO_DATE('27-DEC-2022', 'DD-MON-YYYY'), 36656433152);
INSERT INTO RECORDS VALUES
(986088447, TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), TO_DATE('28-DEC-2022', 'DD-MON-YYYY'), 16848115554);
INSERT INTO RECORDS VALUES
(498395115, TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), TO_DATE('31-DEC-2022', 'DD-MON-YYYY'), 38151885290);
INSERT INTO RECORDS VALUES
(933157812, TO_DATE('26-DEC-2022', 'DD-MON-YYYY'), TO_DATE('29-DEC-2022', 'DD-MON-YYYY'), 17611360072);
INSERT INTO RECORDS VALUES
(183756092, TO_DATE('30-DEC-2022', 'DD-MON-YYYY'), TO_DATE('01-JAN-2023', 'DD-MON-YYYY'), 93408001274);


CREATE TABLE PERSONNEL_PHONE
(personnelID NUMBER(7) NOT NULL,
phoneNumber NUMBER(11) NOT NULL,
CONSTRAINT PERSONNEL_PHONE_pk PRIMARY KEY(personnelID, phoneNumber),
CONSTRAINT PERSONNEL_PHONE_personnelID_fk FOREIGN KEY (personnelID) REFERENCES PERSONNEL(personnelID),
CONSTRAINT PERSONNEL_PHONE_check_ID CHECK ((LENGTH(personnelID) = 7) AND (LENGTH(phoneNumber) = 10)));

CREATE TABLE PERSONNEL_EMAIL
(personnelID NUMBER(7) NOT NULL,
email VARCHAR2(23) NOT NULL,
CONSTRAINT PERSONNEL_EMAIL_pk PRIMARY KEY(personnelID, email),
CONSTRAINT PERSONNEL_EMAIL_personnelID_fk FOREIGN KEY (personnelID) REFERENCES PERSONNEL(personnelID),
CONSTRAINT PERSONNEL_EMAIL_check_ID CHECK (LENGTH(personnelID) = 7));

CREATE TABLE PATIENT_PHONE
(patientID NUMBER(11) NOT NULL,
phoneNumber NUMBER(11)NOT NULL,
CONSTRAINT PATIENT_PHONE_pk PRIMARY KEY(patientID, phoneNumber),
CONSTRAINT PATIENT_PHONE_patientID_fk FOREIGN KEY (patientID) REFERENCES PATIENT(patientID),
CONSTRAINT PATIENT_PHONE_check_ID CHECK ((LENGTH(patientID) = 11) AND (LENGTH(phoneNumber) = 10)));

CREATE TABLE PATIENT_EMAIL
(patientID NUMBER(11) NOT NULL,
email VARCHAR2(23) NOT NULL,
CONSTRAINT PATIENT_EMAIL_pk PRIMARY KEY(patientID, email),
CONSTRAINT PATIENT_EMAIL_patientID_fk FOREIGN KEY (patientID) REFERENCES PATIENT(patientID),
CONSTRAINT PATIENT_EMAIL_check_ID CHECK (LENGTH(patientID) = 11));


INSERT INTO PATIENT_PHONE VALUES(10125341490, 05235789221);
INSERT INTO PATIENT_PHONE VALUES(17863191400, 05654519978);
INSERT INTO PATIENT_PHONE VALUES(31846835884, 05761407533);
INSERT INTO PATIENT_PHONE VALUES(50190904312, 05800639646);
INSERT INTO PATIENT_PHONE VALUES(50190904312, 05573118965);
INSERT INTO PATIENT_PHONE VALUES(27162493778, 05772175596);
INSERT INTO PATIENT_PHONE VALUES(16848115554, 05904535228);
INSERT INTO PATIENT_PHONE VALUES(38151885290, 05793664499);
INSERT INTO PATIENT_PHONE VALUES(31846835884, 05145228019);
INSERT INTO PATIENT_PHONE VALUES(16848115554, 05920678054);

INSERT INTO PATIENT_EMAIL VALUES(10125341490, 'mahmutakbulut@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(10125341490, 'akbulutmah@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(93408001274, 'iremgurmen@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(17611360072, 'sinanakyuz@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(13359888410, 'gunaytokgoz@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(50190904312, 'renginarican@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(50190904312, 'aricanrengin@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(46742100868, 'perverokur@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(10125341490, 'mah999akbulut@gmail.com');
INSERT INTO PATIENT_EMAIL VALUES(17611360072, 'aksinan@gmail.com');

INSERT INTO PERSONNEL_PHONE VALUES(6397229, 05148496468);
INSERT INTO PERSONNEL_PHONE VALUES(6397229, 05538244253);
INSERT INTO PERSONNEL_PHONE VALUES(4646138, 05403154115);
INSERT INTO PERSONNEL_PHONE VALUES(4646138, 05566364895);
INSERT INTO PERSONNEL_PHONE VALUES(3050477, 05476192096);
INSERT INTO PERSONNEL_PHONE VALUES(7725987, 05729743762);
INSERT INTO PERSONNEL_PHONE VALUES(3575147, 05872400427);
INSERT INTO PERSONNEL_PHONE VALUES(5628060, 05572654022);
INSERT INTO PERSONNEL_PHONE VALUES(5628060, 05879678763);
INSERT INTO PERSONNEL_PHONE VALUES(1214861, 05436069453);

INSERT INTO PERSONNEL_EMAIL VALUES(2633048, 'berretah@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(9713458, 'fikriatan@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(9713458, 'atanfikri@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(9944728, 'ozlemkoca@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(3121301, 'seckinakay@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(1583815, 'tulintasci@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(1583815, 'tascitulin@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(7493218, 'emelozberk@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(4858286, 'yoncaeksi@gmail.com');
INSERT INTO PERSONNEL_EMAIL VALUES(4858286, 'yoneksiyon@gmail.com');