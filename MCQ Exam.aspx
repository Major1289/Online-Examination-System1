﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MCQExam.aspx.cs" Inherits="OnlineExamSystem.MCQExam" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MCQ Exam</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .exam-section {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .question {
            margin-bottom: 20px;
        }
        .question p {
            font-size: 18px;
            font-weight: bold;
        }
        .answer {
            margin-left: 20px;
        }
        .answer input {
            margin-right: 10px;
        }
        .submit-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
        .result {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>MCQ Exam</h1>
        </div>

        <!-- Exam Section -->
        <div class="exam-section">
            <form id="mcqForm" runat="server">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                <!-- Example of dynamically generated question with options -->
                <div id="questionContainer" runat="server">
                    <!-- Questions will be populated here dynamically -->
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnSubmit" runat="server" Text="Submit Exam" OnClick="SubmitExam_Click" CssClass="submit-btn" />
            </form>
        </div>

        <!-- Result Section -->
        <div id="resultSection" class="result" runat="server" visible="false">
            <h3>Your Score: <span id="lblScore" runat="server"></span></h3>
            <h4>Correct Answers: <span id="lblCorrectAnswers" runat="server"></span></h4>
            <h4>Total Questions: <span id="lblTotalQuestions" runat="server"></span></h4>
        </div>
    </div>
</body>
</html>
