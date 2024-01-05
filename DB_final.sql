--create database final_test

--Create table doctors(
--	Doctor_ID varchar(255) primary key,
--	Name varchar(50),
--	Specialization varchar(50) NOT NULL,
--	Working_days int NOT NULL,
--	Working_hours int NOT NULL,)

--INSERT INTO Doctors (Doctor_ID, Name, Specialization, Working_days, Working_hours)
--VALUES ('D1', 'Dr. Smith', 'Cardiology', 5, 8),
--       ('D2', 'Dr. Johnson', 'Pediatrics', 4, 7),
--       ('D3', 'Dr. Williams', 'Orthopedics', 3, 8),
--       ('D4', 'Dr. Davis', 'Dermatology', 3, 8);


--create table DoctorRegistery(    --fee y zyada f esm el table
--	Doctor_ID varchar(255) primary key,
--	Name varchar(50),
--	Specialization varchar(50) NOT NULL,
--	Working_days int NOT NULL,
--	Working_hours int NOT NULL,
--	email varchar(255) not null,
--	password varchar(255) not null)


--create proc DoctorRegister 
--    @Doctor_ID varchar(255),
--	@Name varchar(50) ,
--	@Specialization varchar(50) ,
--	@Working_days int ,
--	@Working_hours int,
--    @email varchar(255),
--    @password varchar(255)
--    AS
--    Begin
--    IF NOT EXISTS (SELECT Doctor_ID FROM DoctorRegistery WHERE Doctor_ID = @Doctor_ID) --law msh mawgood fl table ne3ml register -- select 1 bybos law 3lla a2al 1 record bymeet requirments (more efficent)
--    begin
--    INSERT INTO DoctorRegistery 
--    VALUES (@Doctor_ID, @Name, @Specialization, @Working_days, @Working_hours, @email, @password)
--    print('Doctor Number ' + @Doctor_ID + ' registered successfully!')
--    end
--    Else -- law mwgood reject it
--    begin
--    Print('Doctor number: ' + @Doctor_ID  +' already exists!')
--    end
--    end

--Exec DoctorRegister 'D5', 'Dr. Selim', 'gastroenterologist', 3, 8, 'dr.selim@gmail.com', 'selim101'

--Exec DoctorRegister 'D1', 'Dr. Youssef', 'gastroenterologist', 3, 8, 'dr.selim@gmail.com', 'youssef101'

--Exec DoctorRegister 'D2', 'Dr. Hussain', 'gastroenterologist', 3, 8, 'dr.selim@gmail.com', 'hussain101'

--Exec DoctorRegister 'D3', 'Dr. Omar', 'gastroenterologist', 3, 8, 'dr.selim@gmail.com', 'omar101'

--Exec DoctorRegister 'D4', 'Dr. Steven', 'gastroenterologist', 3, 8, 'dr.selim@gmail.com', 'steven101'

--Create table Doc_PhoneNum(DoctorID varchar(255) references DoctorRegistery, Phone_num varchar(255), primary key(DoctorID,Phone_num))

--Create table CallCenters(Call_ID varchar(255) primary key, Phone_number int NOT NULL)

--insert into CallCenters Values
--	('C1',123),
--	('C2',321),
--	('C3',231),
--	('C4',312),
--	('C5',213);

--create table EMS (Ems_id varchar(255) primary key not null, Date_of_emergency date ,
--    Call_id varchar(255) not null references CallCenters on update cascade on delete cascade)

--insert into EMS values('E1','03/15/2003', 'C1') -- seeno
--insert into EMS values('E2','04/21/2003', 'C2') --usef
--insert into EMS values('E3','04/02/2003', 'C3') --wello
--insert into EMS values('E4','08/12/2003', 'C4') --jimmy
--insert into EMS values('E5','01/22/2003', 'C5') --steven bonus

--create table Hospitals(
--Hospital_name varchar(255) primary key,
--Branch_Location varchar(255) not null,
--Email varchar(255) not null,
--)


--insert into Hospitals
--values
--('Dar El Fouad','al dokki','darelfouad@gmail.com'),
--('Saudi german','al nozha','saudigerman@gmail.com'),
--('Al Salam ','al maadi','alsalam@gmail.com'),
--('Cleopatra','masrelgdida','cleoptara@gmail.com'),
--('Nile','el manyal','nile@gmail.com')

--Create Table Ambulance_Service
--    (
--    Hospital_Name varchar(255) references Hospitals, 
--    EMS_ID varchar(255) references EMS, 
--    primary key(Hospital_Name,EMS_ID)
--    )

--Insert Into Ambulance_Service Values
--    ('Dar El Fouad','E1'),
--    ('Cleopatra','E2'),
--    ('Al Salam','E3'),
--    ('Nile','E4')

--Create table InsuranceCompanies (Insurance_id varchar(255) primary key not null,Name varchar(30)
--, Hospital_name varchar(255) not null foreign key references Hospitals , )

--insert into InsuranceCompanies Values ('I1','MetLife','Dar El Fouad') --SEENO dar el fouad treatment 1 Asprin 
--insert into InsuranceCompanies Values ('I2','Aetna','Saudi German') --usef SGH treatment 2 Epinephrine 
--insert into InsuranceCompanies Values ('I3','Cigna','Al Salam') --Wello Al Salam treatment 3 Glucose
--insert into InsuranceCompanies Values ('I4','Humana','Cleopatra') --jimmy Cleopatra treatment 4 Morphine 
--insert into InsuranceCompanies Values ('I5','Prudential','Nile') --steven Nile treatment 5 Naloxone

--CREATE TABLE Patients (
--    PID varchar(255) PRIMARY KEY,
--    Address VARCHAR(20),
--    Name VARCHAR(20),
--    Email VARCHAR(50),
--    Blood_type VARCHAR(20),
--    Is_insured BIT,
--	ems_ID varchar(255) references EMS,
--	Insurance_ID varchar(255) references InsuranceCompanies)

--INSERT INTO Patients (PID, Address, Name, Email, Blood_type, Is_insured,ems_ID,Insurance_ID)
--VALUES('P1', 'Lutticher str 6', 'Seeno', 'seenoberlin@gmail.com', 'AB-', 1,'E1','I1'),
--('P2', 'Lutticher Str 6', 'Usef', 'youssefseyam3@gmail.com', 'B-', 1,'E2','I2'),
--('P3', 'Lutticher Str 6', 'Wello', 'wello03@gmail.com', 'A-', 1,'E3','I3'),
--('P4', 'Osloer Str 101', 'Jimmhy', 'jimmyabdo03@gmail.com', 'AB+', 1,'E4','I4'),
--('P5', 'Elm Str 5', 'Steven', 'stevo03@gmail.com', 'O-', 1,'E5','I5'),
--('P6', 'Osloer Str 101', 'Khobby', 'khobbito03@gmail.com', 'A+', 0,'E2','I2');

--create table PatientsRegistery(PID varchar(255) PRIMARY KEY,   --fee y zyada f esm el table w fee s zyada fl patient
--    Address VARCHAR(20),
--    Name VARCHAR(20),
--    Email VARCHAR(50),
--    Blood_type VARCHAR(20),
--    Is_insured BIT,
--	ems_ID varchar(255) references EMS,
--	Insurance_ID varchar(255) references InsuranceCompanies,
--  password varchar(255))


--create procedure PatientRegister @PID varchar(255),
--    @Address VARCHAR(20),
--    @Name VARCHAR(20),
--    @Email VARCHAR(50),
--    @Blood_type VARCHAR(20),
--    @Is_insured BIT,
--	@ems_ID varchar(255) ,
--	@Insurance_ID varchar(255),
--  @password varchar(255)
--    AS
--    Begin
--    IF NOT EXISTS (SELECT PID FROM PatientsRegistery WHERE PID = @PID) --law msh mawgood fl table ne3ml register
--    begin
--    INSERT INTO PatientsRegistery 
--    VALUES (@PID, @Address, @Name, @Email, @Blood_type, @Is_insured, @ems_ID, @Insurance_ID, @password)
--    print('Patient Number ' + @PID  + ' registered successfully!')
--    end
--    Else -- law mwgood reject it
--    begin
--    Print('Patient number: ' + @PID +' already exists!')
--    end
--    end

--exec PatientRegister 'P7', 'Osloer Str 101', 'Bahader', 'seif.bahader@gmail.com', 'A-', 0,'E2','I2', 'Seif123'
--exec PatientRegister 'P1', 'Osloer Str 101', 'Youssef', 'Youssef@gamil.com', 'O-', 0,'E2','I2', 'Youssef123'
--exec PatientRegister 'P2', 'Osloer Str 101', 'Seeno', 'Seeno@gmail.com', 'B-', 0,'E1','I2', 'Seno123'
--exec PatientRegister 'P3', 'Osloer Str 101', 'Hussain', 'Hussain@gmail.com', 'B+', 0,'E2','I2', 'Hussain123'
--exec PatientRegister 'P4', 'Osloer Str 101', 'Omar', 'Omar@gmail.com', 'O+', 0,'E3','I2', 'Omar123'
--exec PatientRegister 'P5', 'Osloer Str 101', 'Jimmy', 'Jimmy@gmail.com', 'A+', 0,'E2','I3', 'Jimmy123'
--exec PatientRegister 'P6', 'Osloer Str 101', 'Joe', 'Joe@gmail.com', 'A-', 0,'E2','I1', 'Joe123'

--Create Table Pharmacy(PharmacyID varchar(255) primary key, PharmacyName varchar(255), location varchar(255))

--INSERT INTO Pharmacy (PharmacyID, PharmacyName, Location) VALUES
--('PH1', 'ABC Pharmacy', '123 Main Street'),
--('PH2', 'XYZ Pharmacy', '456 Oak Avenue'),
--('PH3', 'MNO Drugstore', '789 Maple Lane'),
--('PH4', 'PQR Pharmacy', '321 Elm Road'),
--('PH5', 'LMN Medical Mart', '654 Birch Boulevard');

--CREATE TABLE Pharmacists (
--    Pharmacist_ID varchar(255) PRIMARY KEY,
--    Name VARCHAR(20),
--    Starting_day datetime,
--    Experience AS (YEAR(CURRENT_TIMESTAMP) - YEAR(Starting_day)),
--    Pharmacy_ID varchar(255) references Pharmacy)

--INSERT INTO Pharmacists (Pharmacist_ID, Name, Starting_day, Pharmacy_ID )
--VALUES ('PS1', 'Pharm. Brown', '2022-01-01', 'PH1'),
--       ('PS2', 'Pharm. Wilson', '2021-05-15', 'PH2'),
--       ('PS3', 'Pharm. Miller', '2022-03-10', 'PH3'),
--       ('PS4', 'Pharm. Moore', '2021-11-20', 'PH4');

--create table PharmacistRegistery( --fee y zyada f esm el table
--    Pharmacist_ID varchar(255) PRIMARY KEY,
--    Name VARCHAR(20) not null,
--    Starting_day datetime not null,
--    Experience AS (YEAR(CURRENT_TIMESTAMP) - YEAR(Starting_day)),
--    Pharmacy_ID varchar(255) references Pharmacy not null,
--    email varchar(255)not null,
--    password varchar(255)not null)


--create proc PharmacistRegister 
-- @Pharmacist_ID varchar(255),
--    @Name VARCHAR(20),
--    @Starting_day datetime,
---- experience byt7sb lwa7do
--    @Pharmacy_ID varchar(255),
--    @email varchar(255),   
--    @password varchar(255)
--    AS
--    Begin
--    IF NOT EXISTS (SELECT Pharmacist_ID FROM PharmacistRegistery WHERE Pharmacist_ID = @Pharmacist_ID) --law msh mawgood fl table ne3ml register -- select 1 bybos law 3lla a2al 1 record bymeet requirments (more efficent)
--    begin
--    INSERT INTO PharmacistRegistery (Pharmacist_ID, Name, Starting_day , Pharmacy_ID, email , password)
--    VALUES (@Pharmacist_ID, @Name, @Starting_day, @Pharmacy_ID, @email, @password)
--    print('Pharmacist Number ' + @Pharmacist_ID  + ' registered successfully!')
--    end
--    Else -- law mwgood reject it
--    begin
--    Print('Pharmacist number: ' + @Pharmacist_ID  +' already exists!')
--    end
--    end

--exec PharmacistRegister  'PS105', 'Pharm. Magdy', '2011-11-11', 'PH4', 'magdyPharmacy@gmail.com','Magdy@ya3koob_soon'

--CREATE TABLE Nurses (
--    Nurse_ID varchar(255) PRIMARY KEY,
--    First_name VARCHAR(20),
--    Middle_name VARCHAR(20),
--    Last_name VARCHAR(20),
--    Shift VARCHAR(20),
--    PID varchar(255) FOREIGN KEY REFERENCES Patients)

--INSERT INTO Nurses (Nurse_ID, First_name, Middle_name, Last_name, Shift, PID)
--VALUES ('N1', 'Nurse', 'A', 'Johnson', 'Night', 'P1'),
--       ('N2', 'Nurse', 'B', 'Smith', 'Day', 'P2'),
--       ('N3', 'Nurse', 'C', 'Jones', 'Night', 'P3'),
--       ('N4', 'Nurse', 'D', 'Brown', 'Day', 'P4');

--CREATE table NurseRegistery(
--Nurse_ID varchar(255) PRIMARY KEY,
--    First_name VARCHAR(20) not null,
--    Middle_name VARCHAR(20)not null ,
--    Last_name VARCHAR(20) not null,
--    Shift VARCHAR(20) not null,
--    PID varchar(255) FOREIGN KEY REFERENCES PatientsRegistery not null,
--email varchar(255) not null,
--password varchar(255) not null)


--create proc NurseRegister
-- @Nurse_ID varchar(255),
--    @First_name VARCHAR(20),
--    @Middle_name VARCHAR(20),
--    @Last_name VARCHAR(20),
--    @Shift VARCHAR(20),
--    @PID varchar(255),
--    @email varchar(255),
--    @password varchar(255)
--    AS
--    Begin
--    IF NOT EXISTS (SELECT Nurse_ID FROM NurseRegistery WHERE Nurse_ID = @Nurse_ID) --law msh mawgood fl table ne3ml register -- select 1 bybos law 3lla a2al 1 record bymeet requirments (more efficent)
--    begin
--    INSERT INTO NurseRegistery 
--    VALUES (@Nurse_ID, @First_name, @Middle_name,@Last_name, @Shift, @PID, @email, @password)
--    print('Nurse Number ' + @Nurse_ID  + ' registered successfully!')
--    end
--    Else -- law mwgood reject it
--    begin
--    Print('Nurse number: ' +@Nurse_ID  +' already exists!')
--    end
--    end


    --exec NurseRegister 'N1', 'Mohamed', 'Ahmed', 'seddik', 'Night', 'P5', 'Moseddik@gmail.com', 'seddiko@M1'





--CREATE FUNCTION Covered (@Cost int, @PID varchar(255))
--RETURNS VARCHAR(255)
--AS
--BEGIN
--    DECLARE @y VARCHAR(255)

--    IF dbo.isInsured(@PID) = 1
--    BEGIN
--        IF @Cost > 200 
--            SET @y = (SELECT PID FROM PatientsRegistery WHERE PID = @PID)
--        ELSE
--            SET @y = (SELECT Insurance_ID FROM PatientsRegistery WHERE PID = @PID)
--    END
--    ELSE
--        SET @y = (SELECT PID FROM PatientsRegistery WHERE PID = @PID)

--    RETURN @y
--END

--Create table Treatment(Treatment_ID varchar(255) primary key, Cost int NOT NULL, PID varchar(255) references PatientsRegistery on update cascade on delete cascade,CoveredBy as (dbo.Covered(Cost,PID))) 

--INSERT INTO Treatment (Treatment_id, Cost, PID) VALUES
--('T1', 1000.00, 'P1'),
--('T2', 500.00, 'P2'),
--('T3', 1200.00, 'P3'),
--('T4', 800.00, 'P4'),
--('T5', 1500.00, 'P5'),
--('T6',950,'P6'),
--('T7',1050,'P1'),
--('T8',780,'P2'),
--('T9',2300,'P3'),
--('T10',1400,'P4');



--create table Prescription(
--Date_issued date,
--Doctor_id varchar(255) foreign key references DoctorRegistery,
--PID varchar(255), foreign key(PID) references PatientsRegistery,
--primary key(date_issued,Doctor_id),
--Treatment_ID varchar(255) foreign key references Treatment)  

--insert into Prescription
--values
--('9-30-2020','D5','P7','T5')

--create function isinsured (@pid varchar(255))
--returns bit
--as
--begin
--return (select is_insured from PatientsRegistery where PatientsRegistery.PID=@pid)
--end



--Create Table Medication(Treatment_ID varchar(255) references Treatment primary key, Medicine_Name varchar(255), PID varchar(255) references PatientsRegistery)

--INSERT INTO Medication VALUES
--('T1', 'Aspirin', 'P1'),
--('T2', 'Ibuprofen', 'P2'),
--('T3', 'Antibiotic', 'P3'),
--('T4', 'Painkiller', 'P4'),
--('T5', 'Antacid', 'P5');

--create table Surgery(Treatment_ID varchar(255) references Treatment primary key, Surgery_type varchar(50) NOT NULL,PID varchar(255) references PatientsRegistery)

--INSERT INTO Surgery (Treatment_id, Surgery_type,PID) VALUES
--('T6', 'Appendectomy','P6'),
--('T7', 'Orthopedic Surgery','P1'),
--('T8', 'Heart Bypass','P2'),
--('T9', 'Cataract Surgery','P3'),
--('T10', 'Lung Transplant','P4');

--Create table LabTests(TestID varchar(255) primary key,TestName varchar(50) NOT NULL,Hospital_Name varchar(255) references Hospitals)

--INSERT INTO LabTests (TestID, TestName,Hospital_Name) VALUES
--('L1', 'Blood Test','Dar El Fouad'),
--('L2','X-ray','Saudi german'),
--('L3', 'Urinalysis','Al Salam'),
--('L4','MRI Scan','Cleopatra'),
--('L5', 'EKG','Nile');

--Create Table Monitors(Treatment_ID varchar(255) references Treatment, PID varchar(255) references PatientsRegistery, Nurse_ID varchar(255) references NurseRegistery, primary key(Treatment_ID,PID,Nurse_ID))

--INSERT INTO Monitors (Treatment_ID, PID, Nurse_ID) VALUES
--('T1', 'P1', 'N1'),
--('T2', 'P2', 'N1'),
--('T3', 'P3', 'N1'),
--('T4', 'P4', 'N1');

--Create Table Check_Hospital_Doctors(Hospital_Name varchar(255) references Hospitals, DoctorsID varchar(255) references DoctorRegistery, PID varchar(255) references PatientsRegistery, primary key(Hospital_Name, DoctorsID, PID))
--INSERT INTO Check_Hospital_Doctors (Hospital_Name, DoctorsID, PID) VALUES
--('Dar El Fouad', 'D1', 'P1'),
--('Saudi german', 'D2', 'P2'),
--('Al Salam', 'D3', 'P3'),
--('Cleopatra', 'D4', 'P4'),
--('Nile', 'D1', 'P5');

--CREATE TABLE ChecksPerscription (
--    PharmacistID varchar(255) REFERENCES PharmacistRegistery(Pharmacist_ID),
--    PID varchar(255) references PatientsRegistery(PID),
--    Prescription_Date DATE,
--    DoctorID varchar(255),
--    PRIMARY KEY (PharmacistID, PID, Prescription_Date, DoctorID),
--    foreign key (Prescription_Date,DoctorID) references Prescription(date_issued,Doctor_id)
--);

--INSERT INTO ChecksPerscription (PharmacistID, PID, Prescription_Date, DoctorID) VALUES
--('PS105', 'P1', '9-30-2020', 'D5')


--create table Contract_Sign(Insurance_id varchar(255) references InsuranceCompanies,Hospital_Name varchar(255) references Hospitals, primary key(Insurance_id,Hospital_Name))
--INSERT INTO Contract_Sign (Insurance_id, Hospital_Name) VALUES
--('I1', 'Dar El Fouad'),
--('I2', 'Saudi german'),
--('I3', 'Al Salam'),
--('I4', 'Cleopatra'),
--('I5', 'Nile');

--create table Examines(Doctor_ID varchar(255) foreign key references DoctorRegistery , PID varchar(255) foreign key references PatientsRegistery, primary key(Doctor_ID,PID)) 

--create table Listens(Doctor_ID varchar(255) foreign key references DoctorRegistery , PID varchar(255) foreign key references PatientsRegistery primary key(Doctor_ID,PID))

--create table Views(Doctor_ID varchar(255) foreign key references DoctorRegistery , PID varchar(255) foreign key references PatientsRegistery primary key(Doctor_ID,PID))

--create table Provides(Hospital_name varchar(255) foreign key references Hospitals, TestID varchar(255) foreign key references LabTests primary key(Hospital_name,TestID))

--create table Requests_lab_tests (Doctor_ID varchar(255) foreign key references DoctorRegistery, TestID varchar(255) foreign key references LabTests, PID varchar(255) references PatientsRegistery, primary key(Doctor_ID,TestID,PID))

--create table Manage (Call_ID varchar(255) foreign key references CallCenters, Ems_id varchar(255) foreign key references EMS, primary key(Call_ID,Ems_id))

--create table Pre_hospital_treatment (Hospital_name varchar(255)  foreign key references Hospitals  , Ems_id varchar(255)  foreign key references EMS,primary key(Hospital_name,Ems_id))

--INSERT INTO Examines (Doctor_ID, PID) VALUES
--('D1', 'P1'),
--('D2', 'P2'),
--('D3', 'P3'),
--('D4', 'P4'),
--('D1', 'P5');

--INSERT INTO Listens (Doctor_ID, PID) VALUES
--('D1', 'P1'),
--('D2', 'P2'),
--('D3', 'P3'),
--('D4', 'P4'),
--('D1', 'P5');

--INSERT INTO Views (Doctor_ID, PID) VALUES
--('D1', 'P1'),
--('D2', 'P2'),
--('D3', 'P3'),
--('D4', 'P4'),
--('D1', 'P5');

--INSERT INTO Provides (Hospital_name, TestID) VALUES
--('Dar El Fouad', 'L1'),
--('Saudi german', 'L2'),
--('Al Salam', 'L3'),
--('Cleopatra', 'L4'),
--('Nile', 'L5');

--INSERT INTO Requests_lab_tests (Doctor_ID, TestID,PID) VALUES
--('D1', 'L1','P1'),
--('D2', 'L2','P3'),
--('D3', 'L3','P4'),
--('D4', 'L4','P5'),
--('D1', 'L5','P2'),
--('D1','L1','P3'),
--('D2','L1','P4')

--INSERT INTO Manage (Call_ID, Ems_id) VALUES
--('C1', 'E1'),
--('C2', 'E2'),
--('C3', 'E3'),
--('C4', 'E4'),
--('C5', 'E5');

--INSERT INTO Pre_hospital_treatment (Hospital_name, Ems_id) VALUES
--('Dar El Fouad', 'E1'),
--('Saudi german', 'E2'),
--('Al Salam', 'E3'),
--('Cleopatra', 'E4'),
--('Nile', 'E5');

--create table Emergency_care(
--Ems_id varchar(255), foreign key(Ems_id) references EMS,
--Hospital_name varchar(255),foreign key(Hospital_name) references Hospitals,
--PID varchar(255),foreign key(PID) references PatientsRegistery,
--primary key(Ems_id,Hospital_name,PID)
--)

--create table Treats (
--PID varchar(255),foreign key(PID) references PatientsRegistery,
--Doctor_id varchar(255), foreign key(Doctor_id) references DoctorRegistery,
--Treatment_id varchar(255), foreign key(Treatment_id) references Medication,
--primary key(PID,Doctor_id,Treatment_id)
--)

--create table writes(
--Doctor_id varchar(255),
--Date_issued DATE,
--PID varchar(255) references PatientsRegistery,
--PRIMARY KEY (PID, Doctor_id, Date_issued),
--FOREIGN KEY (Date_issued,Doctor_id ) REFERENCES Prescription(date_issued,Doctor_id),
--)

--create table Take_care(
--PID varchar(255),foreign key(PID) references PatientsRegistery,
--Doctor_id varchar(255), foreign key(Doctor_id) references DoctorRegistery,
--primary key(PID,Doctor_id)
--)

--create table Make_appointment(
--PID varchar(255),foreign key(PID) references PatientsRegistery,
--Doctor_id varchar(255),foreign key(Doctor_id) references DoctorRegistery,
--Date date not null,
--primary key(PID,Doctor_id)
--)

--create table Gives(
--PID varchar(255),foreign key(PID) references PatientsRegistery,
--Treatment_id varchar(255), foreign key(Treatment_id) references Medication,
--Pharmacist_id varchar(255), foreign key(Pharmacist_id) references PharmacistRegistery,
--primary key (PID,Treatment_id,Pharmacist_id)
----)

--INSERT INTO Emergency_care (Ems_id, Hospital_name, PID) VALUES
--('E1', 'Dar El Fouad', 'P1'),
--('E2', 'Saudi german', 'P2'),
--('E3', 'Al Salam', 'P3'),
--('E4', 'Cleopatra', 'P4'),
--('E5', 'Nile', 'P5')

--INSERT INTO Treats (PID, Doctor_id, Treatment_id) VALUES
--('P1', 'D1', 'T1'),
--('P2', 'D3', 'T2'),
--('P3', 'D2', 'T3'),
--('P4', 'D2', 'T4'),
--('P5', 'D4', 'T5'),
--('P6', 'D2', 'T1')

--INSERT INTO Take_care (PID, Doctor_id) VALUES
--('P1', 'D1'),
--('P2', 'D3'),
--('P3', 'D2'),
--('P4', 'D2'),
--('P5', 'D4'),
--('P6','D2')

--INSERT INTO Make_appointment (PID, Doctor_id,Date) VALUES
--('P7', 'D1','2023/12/19'),
--('P2', 'D3','2023/11/15'),
--('P3', 'D2','2020/5/12'),
--('P4', 'D2','2021/1/21'),
--('P5', 'D4','2022/12/11'),
--('P6','D2','2018/2/2')

--INSERT INTO Gives (PID, Treatment_id, Pharmacist_id) VALUES
--('P1', 'T1', 'PS105'),
--('P2', 'T2', 'PS105'),
--('P3', 'T3', 'PS105'),
--('P4', 'T4', 'PS105'),
--('P5', 'T5', 'PS105');

-- Table: Offered
--CREATE TABLE Offered (
--    Insurance_id varchar(255),
--    Treatment_id varchar(255),
--    PRIMARY KEY (Insurance_id, Treatment_id),
--    FOREIGN KEY (Insurance_id) REFERENCES InsuranceCompanies(Insurance_id),
--    FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id)
--);

--INSERT INTO Offered (Insurance_id, Treatment_id) VALUES
--('I1', 'T1'), -- MetLife offers coverage for Aspirin
--('I2', 'T6'), -- Aetna offers coverage for Ibuprofen
--('I3', 'T3'), -- Cigna offers coverage for Antibiotic
--('I4', 'T4'), -- Humana offers coverage for Painkiller
--('I5', 'T5');-- Prudential offers coverage for Antacid

--CREATE TABLE Administers (
--    Treatment_id varchar(255),
--    Nurse_id varchar(255),
--    PID varchar(255),
--    PRIMARY KEY (Treatment_id, Nurse_id, PID),
--    FOREIGN KEY (Treatment_id) REFERENCES Treatment(Treatment_id),
--    FOREIGN KEY (Nurse_id) REFERENCES NurseRegistery(Nurse_id),
--    FOREIGN KEY (PID) REFERENCES PatientsRegistery(PID)
--);

--INSERT INTO Administers (Treatment_id, Nurse_id, PID) VALUES
--('T1', 'N1', 'P1'),
--('T2', 'N2', 'P2'),
--('T3', 'N3', 'P3'),
--('T4', 'N4', 'P4');

-- Table: Checks
--CREATE TABLE Checks (
--    Hospital_name VARCHAR(255),
--    Doctor_id varchar(255),
--    PID varchar(255),
--    PRIMARY KEY (Hospital_name, Doctor_id, PID),
--    FOREIGN KEY (Hospital_name) REFERENCES Hospitals(Hospital_name),
--    FOREIGN KEY (Doctor_id) REFERENCES DoctorRegistery(Doctor_ID),
--    FOREIGN KEY (PID) REFERENCES PatientsRegistery(PID)
--);

--INSERT INTO Checks (Hospital_name, Doctor_id, PID) VALUES
--('Dar El Fouad', 'D1', 'P1'),
--('Saudi german', 'D2', 'P2'),
--('Al Salam', 'D3', 'P3'),
--('Cleopatra', 'D4', 'P4');

--CREATE TABLE Discharge (
--    Hospital_name VARCHAR(255),
--    PID varchar(255),
--    PRIMARY KEY (Hospital_name, PID),
--    FOREIGN KEY (Hospital_name) REFERENCES Hospitals(Hospital_name),
--    FOREIGN KEY (PID) REFERENCES PatientsRegistery(PID)
--);

--INSERT INTO Discharge (Hospital_name, PID) VALUES
--('Dar El Fouad', 'P1'),
--('Saudi german', 'P2'),
--('Al Salam', 'P3'),
--('Cleopatra', 'P4');


---- Table: Admission
--CREATE TABLE Admission (
--    Hospital_name VARCHAR(255),
--    PID varchar(255),
--    PRIMARY KEY (Hospital_name, PID),
--    FOREIGN KEY (Hospital_name) REFERENCES Hospitals(Hospital_name),
--    FOREIGN KEY (PID) REFERENCES PatientsRegistery(PID));

--INSERT INTO Admission (Hospital_name, PID) VALUES
--('Dar El Fouad', 'P1'),
--('Saudi german', 'P2'),
--('Al Salam', 'P3'),
--('Cleopatra', 'P4'),
--('Cleopatra','P5')

--CREATE TABLE Requests (
--    Test_ID varchar(255),
--    Hospital_name VARCHAR(255),
--    PRIMARY KEY (Test_ID, Hospital_name),
--    FOREIGN KEY (Test_ID) REFERENCES LabTests(TestID),
--    FOREIGN KEY (Hospital_name) REFERENCES Hospitals(Hospital_name)
--);

--INSERT INTO Requests (Test_ID, Hospital_name) VALUES
--('L1', 'Dar El Fouad'),
--('L2', 'Saudi german'),
--('L3', 'Al Salam'),
--('L4', 'Cleopatra');

  
--create proc userLogin @ID varchar(255), @password varchar(20),@login_success bit output
--as
--begin 
--    set @login_success=0;
--IF EXISTS (SELECT PID FROM PatientsRegistery WHERE PID = @ID AND Password = @Password)
--BEGIN
--    SET @login_success = 1;
--END
--ELSE IF EXISTS (SELECT Doctor_ID FROM DoctorRegistery WHERE Doctor_ID = @ID AND Password = @Password)
--BEGIN
--    SET @login_success = 1;
--END
--ELSE IF EXISTS (SELECT Pharmacist_ID FROM PharmacistRegistery WHERE Pharmacist_ID = @ID AND Password = @Password)
--BEGIN
--    SET @login_success = 1;
--END
--ELSE IF EXISTS (SELECT Nurse_ID FROM NurseRegistery WHERE Nurse_ID = @ID AND Password = @Password)
--BEGIN
--    SET @login_success = 1;
--END

--return @login_success;
--end

-- CREATE PROCEDURE addMobile-- for doctors only since they're the ones who have phone numbers
--    @Doctor_ID VARCHAR(255),
--    @mobile_number VARCHAR(20)
--AS
--BEGIN
--    IF @Doctor_ID IS NULL OR @mobile_number IS NULL
--    BEGIN
--        PRINT 'DoctorID and MobileNumber cannot be NULL.';
--        RETURN
--    END
--      if not exists( select Doctor_ID from DoctorRegistery where Doctor_ID = @Doctor_ID)
--      begin
--      print 'Cannot register a phone number for DoctorID: ' + (@Doctor_ID) + ' because that doctor is not registed yet!'
--      return
--      end
--    INSERT INTO Doc_PhoneNum (DoctorID, Phone_num) VALUES (@Doctor_ID, @mobile_number);

--    PRINT 'Mobile number: ' +(@mobile_number) +' for doctor id: '+ (@Doctor_ID) +' added successfully.';
--END;

--exec addMobile 'D5','+201000678911' --testing nmrt uncle dr.selim

--create view PatientList 
--as
--select * from PatientsRegistery

--create view PharmacistList 
--as
--select * from PharmacistRegistery

--create view DoctorsList
--as
--select * from DoctorRegistery

--create function AdminViewPatientProfile(@PatientID varchar(255))
--returns table as 
--return(select * from PatientsRegistery where PID = @PatientID)

--create procedure AdminAddPatientInfo @PatientID varchar(255),@Patient_name varchar(255),@address varchar(255),@email varchar(255),@Blood_type varchar(255),@Is_insured bit,@ems_id varchar(255),@Insurance_id varchar(255),@password varchar(255)
--as
--insert into PatientsRegistery
--values
--(@PatientID,@address,@Patient_name,@email,@Blood_type,@Is_insured,@ems_id,@Insurance_id,@password) 
--return 1
--GO

--create procedure AdminUpdatePatientInfo @PatientID varchar(255),@name varchar(255),@address varchar(255),@email varchar(255),@Blood_type varchar(255),@Is_insured bit,@ems_id varchar(255),@Insurance_id varchar(255),@Password varchar(255),@Out bit Output
--as 
--update PatientsRegistery
--set Address = @address , Name = @name , Email = @email , Blood_type = @Blood_type , Is_insured = @Is_insured , ems_ID = @ems_id , Insurance_ID = @Insurance_id, password=@Password
--where PatientsRegistery.PID = @PatientID
--set @Out=1;
--return @Out
--go

--create view AdminViewPatientAndHospitalPerDoc 
--as
--select Check_Hospital_Doctors.DoctorsID,Check_Hospital_Doctors.Hospital_Name,Check_Hospital_Doctors.PID from Check_Hospital_Doctors

--create view AdminViewAllPatientsAndMeds
--as
--select Medication.PID, Medication.Treatment_id,Medication.Medicine_Name, PatientsRegistery.Name from Medication  inner join PatientsRegistery on Medication.PID = PatientsRegistery.PID

--create procedure AdminViewPatientsAndMeds @PatientID varchar(255)
--as
--select Medication.PID,Medication.Treatment_id, Medication.Medicine_Name,PatientsRegistery.Name from Medication inner join PatientsRegistery on Medication.PID = PatientsRegistery.PID where Medication.PID = @PatientID
--go

--create view AdminViewTreatmentPerDocAndPatient
--as
--select * from Treats

   -- Create View AdminViewLabPerDocAndPatient 
   -- AS
   --select 
   --Requests_lab_tests.TestID,
   --LabTests.TestName,
   --DoctorRegistery.Doctor_ID,
   --DoctorRegistery.Name as Doctor_Name,
   --PatientsRegistery.PID,
   --PatientsRegistery.Name as Patients_Name
   --from
   --dbo.DoctorRegistery inner join dbo.Requests_lab_tests  on DoctorRegistery.Doctor_ID=Requests_lab_tests.Doctor_ID 
   -- inner join dbo.LabTests on Requests_lab_tests.TestID=LabTests.TestID
   -- inner join dbo.PatientsRegistery on Requests_lab_tests.PID=PatientsRegistery.PID
   -- group by Requests_lab_tests.TestID,LabTests.TestName,DoctorRegistery.Doctor_ID,DoctorRegistery.Name,PatientsRegistery.PID,PatientsRegistery.Name

   --Create function TreatName (@ID varchar(255))
   --returns varchar(255)
   --AS
   --Begin
   --Declare @out varchar(255)
   --if exists(select Treatment_ID from Medication where Treatment_ID=@ID)
   -- begin 
   --     set @out=(select Medication.Medicine_Name from Medication where Treatment_ID=@ID)
   -- End
   --else if exists(select Treatment_ID from Surgery where Treatment_ID=@ID)
   --  begin
   --     set @out=(select Surgery.Surgery_type from Surgery where Treatment_ID=@ID)
   --  end
   -- else
   --  begin
   --     set @out='NO TREATMENT';
   --  End
   --  return @out
   -- End

--   CREATE VIEW AdminViewPresPerDocAndPatient
--AS
--SELECT
--    DoctorRegistery.Doctor_ID,
--    DoctorRegistery.Name as Doctor_Name,
--    PatientsRegistery.PID as Patients_ID,
--    PatientsRegistery.Name as Patients_Name,
--    Prescription.Date_issued,
--    Treatment.Treatment_ID,
--    dbo.TreatName(Treatment.Treatment_ID) as Treatment_Name
--FROM
--    DoctorRegistery
--    INNER JOIN Prescription ON DoctorRegistery.Doctor_ID = Prescription.Doctor_id
--    INNER JOIN PatientsRegistery ON Prescription.PID = PatientsRegistery.PID
--    INNER JOIN Treatment ON Treatment.Treatment_ID = Prescription.Treatment_ID;

    --Create View AdminViewPharmacists
    --AS
    --Select 
    --PharmacistRegistery.Pharmacist_ID,
    --PharmacistRegistery.Name as Pharmacist_Name,
    --PharmacistRegistery.Pharmacy_ID,
    --Pharmacy.PharmacyName,
    --ChecksPerscription.Prescription_Date
    --From
    --PharmacistRegistery inner join ChecksPerscription on PharmacistRegistery.Pharmacist_ID=ChecksPerscription.PharmacistID
    --inner join Pharmacy on PharmacistRegistery.Pharmacy_ID=Pharmacy.PharmacyID

--Create Function AdminViewPharmacistProfile (@Pharmacist_ID varchar(255))
--returns Table 
--As
--return 
--(Select 
--    dbo.AdminViewPharmacists.Pharmacist_ID,
--    dbo.AdminViewPharmacists.Pharmacist_Name, 
--    PharmacistRegistery.Starting_day,
--    PharmacistRegistery.Experience,
--    dbo.AdminViewPharmacists.Pharmacy_ID,
--    dbo.AdminViewPharmacists.PharmacyName,
--    String_AGG(dbo.AdminViewPharmacists.Prescription_Date,', ') as Prescription_Checked
--From
--    dbo.AdminViewPharmacists inner join PharmacistRegistery on PharmacistRegistery.Pharmacist_ID=dbo.AdminViewPharmacists.Pharmacist_ID 
--where AdminViewPharmacists.Pharmacist_ID='@Pharmacist_ID'
--Group BY
--    dbo.AdminViewPharmacists.Pharmacist_ID,
--    dbo.AdminViewPharmacists.Pharmacist_Name, 
--    PharmacistRegistery.Starting_day,
--    PharmacistRegistery.Experience,
--    dbo.AdminViewPharmacists.Pharmacy_ID,
--    dbo.AdminViewPharmacists.PharmacyName)
--Go

--Create view AdminViewNurse 
--As
--Select 
--*
--from NurseRegistery

--create View AdminViewHospital
--As
--Select
--    Hospitals.Hospital_name,
--    Hospitals.Branch_Location,
--    Hospitals.Email,
--    String_AGG(PatientsRegistery.PID,', ') as Patient_ID,
--    String_AGG(PatientsRegistery.Name,', ') as Patient_Name
--    from
--    Hospitals inner join Admission on Hospitals.Hospital_name=Admission.Hospital_name
--    inner join PatientsRegistery on PatientsRegistery.PID=Admission.PID
--    Group BY
--    Hospitals.Hospital_name,
--    Hospitals.Branch_Location,
--    Hospitals.Email

--Create view AdminViewAmb
--As
--Select
--EMS.Ems_id,
--Hospitals.Hospital_name
--from 
--Hospitals inner join Ambulance_Service on Hospitals.Hospital_name=Ambulance_Service.Hospital_Name
--inner join EMS on EMS.Ems_id=Ambulance_Service.EMS_ID

--Create View AdminViewCall
--As
--Select
--EMS.Ems_id,
--CallCenters.Call_ID
--from
--EMS inner join Manage on EMS.Ems_id=Manage.Ems_id
--inner join CallCenters on CallCenters.Call_ID=Manage.Call_ID

--Create View AdminViewCon
--As
--Select 
--InsuranceCompanies.Insurance_id,
--Hospitals.Hospital_name
--from 
--InsuranceCompanies inner join Contract_Sign on InsuranceCompanies.Insurance_id=Contract_Sign.Insurance_id
--inner join Hospitals on Hospitals.Hospital_name=Contract_Sign.Hospital_Name

--Create Function AdminViewCover (@TreatmentID varchar(255))
--returns bit
--AS
--Begin
--Declare @y bit
--Declare @x varchar(255)
--set @x= (Select CoveredBy from Treatment where Treatment.Treatment_ID=@TreatmentID)
--if exists(Select PID from PatientsRegistery where PatientsRegistery.PID=@x)
--    begin
--    set @y=1
--    end
--else
--    set @y=0
--    return @y
--end

--create view CheckHospitalsAndDoctors 
--as 
--select
--Check_Hospital_Doctors.Hospital_Name,
--String_AGG(Check_Hospital_Doctors.DoctorsID,', ') As Doctors_ID
--from 
--Check_Hospital_Doctors
--Group BY Hospital_Name


--CREATE PROC CheckDoctorsOfHospital @hospitalName VARCHAR(10)
--AS
--SELECT 
--DoctorsID,
--DoctorRegistery.Name as Doctor_Name,
--DoctorRegistery.Specialization,
--DoctorRegistery.Working_days,
--DoctorRegistery.Working_hours
--FROM  
--Check_Hospital_Doctors inner join DoctorRegistery on DoctorRegistery.Doctor_ID=Check_Hospital_Doctors.DoctorsID
--WHERE 
--Check_Hospital_Doctors.Hospital_Name= @hospitalName

--Create PROC makeAppointment @Doctor_id VARCHAR(255), @Patientid VARCHAR(255), @successBit BIT OUTPUT
--AS
--BEGIN 
--IF EXISTS (SELECT Doctor_ID FROM Make_appointment WHERE Doctor_ID = @Doctor_id and PID=@Patientid)
--Begin
--    print 'Already Exists YO'
--    return;
--End
--INSERT INTO Make_appointment(PID, Doctor_ID) VALUES (@Patientid, @Doctor_id) 
--Print'HI'
--IF (EXISTS (SELECT 1 FROM Make_appointment WHERE Doctor_ID = @doctor_id and PID=@Patientid))
--Begin
--    SET @successBit=1;
--End
--ELSE
--        SET @successBit = 0;
--PRINT @successbit
--END

--CREATE PROC viewMyProfile @patientID varchar(255)
--AS
--begin
--SELECT *
--FROM PatientsRegistery
--WHERE PID=@patientID;
--end

--CREATE PROCEDURE editMyProfile
--    @patientID varchar(255),
--    @newAddress VARCHAR(255),
--    @newName VARCHAR(255),
--    @newEmail VARCHAR(255),
--    @newBloodType VARCHAR(10),
--    @newIsInsured BIT,
--    @newEMSId varchar(255),
--    @newInsuranceId varchar(255)
--AS
--UPDATE PatientsRegistery
--SET
--    Address = @newAddress,
--    Name = @newName,
--    Email = @newEmail,
--    Blood_type = @newBloodType,
--    Is_insured = @newIsInsured,
--    ems_id=@newEMSId,
--    Insurance_ID=@newInsuranceId
--WHERE PID = @patientID;


--exec editMyProfile
--@PatientID = 'P7',
--@newAddress = 'masr el gdida',
--@newName = 'adham',
--@newEmail = 'adham@gmail.com',
--@newBloodType = 'AB',
--@newIsInsured = 0,
--@newEMSId = null,
--@newInsuranceId = null

--CREATE PROC DocViewHis @patientID varchar(255)
--AS
--BEGIN
--    (
--    (SELECT 
--    Medication.Treatment_ID,
--    Medication.Medicine_Name as Treatment_Name
--    FROM 
--    Medication  inner join Treatment on Medication.Treatment_ID=Treatment.Treatment_ID
--    inner join PatientsRegistery on PatientsRegistery.PID=Treatment.PID
--    WHERE PatientsRegistery.PID = @patientID)
--    union (select 
--    Surgery.Treatment_ID,
--    Surgery.Surgery_type
--    from
--    Surgery  inner join Treatment on Surgery.Treatment_ID=Treatment.Treatment_ID
--    inner join PatientsRegistery on PatientsRegistery.PID=Treatment.PID
--        WHERE PatientsRegistery.PID = @patientID
--    )
--    )
--END

--CREATE PROCEDURE DoctorReqLab @doctorID varchar(255), @patientID varchar(255), @labTestID varchar(255),  
--@out bit OUTPUT
--AS
--IF EXISTS (SELECT 1 FROM Requests_lab_tests WHERE Doctor_ID = @doctorID)
--AND EXISTS (SELECT 1 FROM Requests_lab_tests WHERE TestID = @labTestID)
--AND EXISTS (SELECT 1 FROM Requests_lab_tests WHERE PID = @patientID)
--Begin
--print 'Already Exists'
--return;
--end
--Insert into Requests_lab_tests(Doctor_ID,TestID,PID) Values(@doctorID , @labTestID ,@patientID)
--IF EXISTS (SELECT 1 FROM Requests_lab_tests WHERE Doctor_ID = @doctorID)
--AND EXISTS (SELECT 1 FROM Requests_lab_tests WHERE TestID = @labTestID)
--AND EXISTS (SELECT 1 FROM Requests_lab_tests WHERE PID = @patientID)
--Begin
--SET @out=1;
--end
--ELSE
--SET @out = 0;
--PRINT @out

--CREATE PROCEDURE DocWritePresc @doctorID varchar(255), @patientID varchar(255), @Date DATE,  
--@successBit bit OUTPUT
--AS
--IF EXISTS (SELECT 1 FROM Prescription WHERE Doctor_ID = @doctorID)
--    AND EXISTS (SELECT 1 FROM   Prescription WHERE Date_issued = @Date)
--    AND EXISTS (SELECT 1 FROM Prescription WHERE PID = @patientID)
--    begin
--    print 'Already Exists'
--    return;
--    end
--Insert into Prescription(Date_issued,Doctor_id,PID) Values(@Date , @doctorID ,@patientID)
----treatment id null for now
--IF EXISTS (SELECT 1 FROM Prescription WHERE Doctor_ID = @doctorID)
--    AND EXISTS (SELECT 1 FROM Prescription WHERE Date_issued = @Date)
--    AND EXISTS (SELECT 1 FROM Prescription WHERE PID = @patientID)
--    begin
--    SET @successBit=1;
--    end
--ELSE
--    SET @successBit = 0;
--   PRINT @successbit

--  CREATE Procedure CheckPresc 
--(
--    @Pharmacist_ID VARCHAR(255), 
--    @Doctor_ID VARCHAR(255), 
--    @PID VARCHAR(255), 
--    @Date_issued DATE
--)
--As
--BEGIN

--    IF NOT EXISTS (
--        SELECT 1
--        FROM ChecksPerscription
--        WHERE 
--            PharmacistID = @Pharmacist_ID
--            AND DoctorID = @Doctor_ID
--            AND PID = @PID
--            AND Prescription_Date = @Date_issued
--    )
--    BEGIN
--        INSERT INTO ChecksPerscription (PharmacistID, DoctorID, PID, Prescription_Date)
--        VALUES (@Pharmacist_ID, @Doctor_ID, @PID, @Date_issued);
--    END
--END;


--create proc PharViewProfile @PharmacistID varchar(255)
--as
--begin
--if not exists(select Pharmacist_ID from PharmacistRegistery where Pharmacist_ID = @PharmacistID )
--begin
--print 'Pharmacist Id: ' + (@PharmacistID) + ' does not exist!'
--end
--else
--begin
--select * from PharmacistRegistery 
--where PharmacistRegistery.Pharmacist_ID = @PharmacistID
--end
--end

--CREATE PROCEDURE UpdatePharProfile
--@PharmacistID VARCHAR(255), --zy ma howa, el ba2y hyfdl as is unless changed
--@New_Name VARCHAR(255) = NULL,
--@New_Starting_day date = NULL,
---- experience byt7sb lwa7do so not taken as input
--@New_Pharmacy_ID VARCHAR(20) = NULL,
--@New_Email VARCHAR(255) = NULL,
--@New_Password VARCHAR(255) = NULL
--AS 
--BEGIN
--IF NOT EXISTS (SELECT Pharmacist_ID FROM PharmacistRegistery WHERE Pharmacist_ID = @PharmacistID)
--BEGIN
--    PRINT 'Pharmacist Id: ' + (@PharmacistID) + ' does not exist!';
--END
--ELSE
--BEGIN
--    UPDATE PharmacistRegistery
--    SET
--        Name = ISNULL(@New_Name, Name),
--        Starting_day = ISNULL(@New_Starting_day, Starting_day),
--        --experience msh hane3mllo modify 3shan byt3eml modify lwa7do 
--        Pharmacy_ID = ISNULL(@New_Pharmacy_ID, Pharmacy_ID),
--        email = ISNULL(@New_Email, email),
--        password = ISNULL(@New_Password,password)
--    WHERE
--        Pharmacist_ID = @PharmacistID;

--    PRINT 'Personal information successfully updated for Pharmacist ID: ' + (@PharmacistID);
--END
--END;

--CREATE FUNCTION GetUser
--(
--    @ID VARCHAR(255)
--)
--RETURNS varchar(255)
--AS
--Begin
--  if Exists(Select 1 from PatientsRegistery where PID=@ID)
--    Begin
--        Return 'P'
--    end
--  Else if Exists(Select 1 from DoctorRegistery where Doctor_ID=@ID)
--    Begin
--        Return 'D'
--    end
--  Else if Exists(Select 1 from PharmacistRegistery where Pharmacist_ID=@ID)
--    Begin
--        Return 'PS'
--    End
--  Else
--    Return 'N'
-- Return 'Null'
--End