-- Create the database at the specified location with initial size and auto growth settings
CREATE DATABASE OurExerciseeDb
ON PRIMARY (
    NAME = N'OurExerciseDb',
    FILENAME = N'D:\Phase2\Assignment exerciese\Assignment-01\OurExerciseDb.mdf',
    SIZE = 24MB,
    FILEGROWTH = 8MB
)
LOG ON (
    NAME = N'OurExerciseDb_log',
    FILENAME = N'D:\Phase2\Assignment exerciese\Assignment-01\OurExerciseDb.ldf'
);

-- Use the newly created database
USE OurExerciseDb

-- Create the StudentRegistrations table with the specified columns
CREATE TABLE StudentRegistrations (
    StudentId INT,
    CourseCode NVARCHAR(50),
    RegistrationDate DATE,
    PRIMARY KEY (StudentId, CourseCode)
);

-- Insert records into the StudentRegistrations table
INSERT INTO StudentRegistrations (StudentId, CourseCode, RegistrationDate)
VALUES
    (1, N'SST204', '2023-06-07'),
    (2, N'ENG105', '2023-06-08'),
    (3, N'SCI107', '2023-06-09'),
    (4, N'GEO201', '2023-06-10'),
    (5, N'CIV101', '2023-06-11');

SELECT * from StudentRegistrations