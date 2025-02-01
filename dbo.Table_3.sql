CREATE TABLE Responses (
    ResponseID INT PRIMARY KEY IDENTITY(1,1) NULL,
    UserID INT NULL,
    QuestionID INT NULL,
    UserAnswer NVARCHAR(MAX),
    MarksObtained INT,
    Comments NVARCHAR(MAX),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (QuestionID) REFERENCES Questions(QuestionID)
);