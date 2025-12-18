CREATE TABLE Doctors (
    Doctor_ID INTEGER PRIMARY KEY,
    Doctor_Name TEXT NOT NULL,
    Specialty TEXT
);

CREATE TABLE Patients (
    Patient_ID INTEGER PRIMARY KEY,
    Patient_Name TEXT NOT NULL,
    Age INTEGER,
    Gender TEXT,
    Health_Status TEXT,
    Doc_ID INTEGER,
    FOREIGN KEY (Doc_ID) REFERENCES Doctors(Doctor_ID)
);

INSERT INTO Doctors VALUES
 (101, 'Dr. Ahmed El-Sayed', 'Surgery');
INSERT INTO Doctors VALUES
 (102, 'Dr. Mona Khaled', 'Cardiology');
INSERT INTO Doctors VALUES 
(103, 'Dr. Sarah Hassan', 'Pediatrics');
INSERT INTO Doctors VALUES 
(104, 'Dr. Mohamed Ali', 'Orthopedics');
INSERT INTO Doctors VALUES 
(105, 'Dr. Laila Ibrahim', 'Dermatology');

INSERT INTO Patients VALUES 
(1, 'Sami Ali', 30, 'Male', 'Stable', 101);
INSERT INTO Patients VALUES
 (2, 'Hoda Mansour', 45, 'Female', 'Critical', 102);
INSERT INTO Patients VALUES 
(3, 'Omar Yassin', 12, 'Male', 'Under Treatment', 103);
INSERT INTO Patients VALUES 
(4, 'Noura Salem', 28, 'Female', 'Stable', 104);
INSERT INTO Patients VALUES 
(5, 'Ziad Mahmoud', 50, 'Male', 'Recovered', 105);
INSERT INTO Patients VALUES 
(6, 'Mariam Amr', 35, 'Female', 'Stable', 101);
INSERT INTO Patients VALUES 
(7, 'Youssef Idrees', 60, 'Male', 'Critical', 102);
INSERT INTO Patients VALUES 
(8, 'Lina Fadi', 8, 'Female', 'Under Treatment', 103);
INSERT INTO Patients VALUES 
(9, 'Khaled Said', 42, 'Male', 'Stable', 104);
INSERT INTO Patients VALUES 
(10, 'Fatma Taha', 22, 'Female', 'Recovered', 105);

UPDATE Patients SET Health_Status = 'Stable' WHERE Patient_ID = 2;
UPDATE Doctors SET Specialty = 'General Surgery' WHERE Doctor_ID = 101;

DELETE FROM Patients WHERE Patient_ID = 5;

SELECT * FROM Patients;
SELECT * FROM Doctors;

