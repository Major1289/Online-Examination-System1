CREATE TABLE Exams (
    ExamID INT PRIMARY KEY IDENTITY(1,1) NULL,
    ExamName NVARCHAR(100) NULL,
    ExamDate DATETIME NULL,
    Duration INT NULL, -- Duration in minutes
    Instructions NVARCHAR(MAX)
);