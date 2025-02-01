CREATE TABLE Questions (
    QuestionID INT PRIMARY KEY IDENTITY(1,1) NULL,
    ExamID INT NULL,
    QuestionText NVARCHAR(MAX) NULL,
    QuestionType NVARCHAR(50) NULL, -- e.g., 'Multiple Choice', 'True/False', 'Short Answer'
    CorrectAnswer NVARCHAR(MAX),
    FOREIGN KEY (ExamID) REFERENCES Exams(ExamID)
);