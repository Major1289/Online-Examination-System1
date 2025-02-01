<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="OnlineExamSystem.Exam" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Exams</title>
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
        .exam-form, .exam-list {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .exam-form h3, .exam-list h3 {
            text-align: center;
        }
        .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .exam-list table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .exam-list table th, .exam-list table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        .exam-list table th {
            background-color: #007bff;
            color: white;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>Manage Exams</h1>
        </div>

        <!-- Exam Form Section -->
        <div class="exam-form">
            <h3>Create New Exam</h3>
            <form id="createExamForm" runat="server">
                <label for="examName">Exam Name:</label>
                <input type="text" id="examName" runat="server" class="input-field" placeholder="Enter Exam Name" />
                <br />
                <label for="examDate">Exam Date:</label>
                <input type="date" id="examDate" runat="server" class="input-field" />
                <br />
                <label for="examDuration">Duration (in minutes):</label>
                <input type="number" id="examDuration" runat="server" class="input-field" placeholder="Enter Duration" />
                <br />
                <label for="examDescription">Description:</label>
                <textarea id="examDescription" runat="server" class="input-field" placeholder="Enter Description"></textarea>
                <br />
                <button type="submit" class="btn" OnClick="CreateExam_Click">Create Exam</button>
            </form>
        </div>

        <!-- Exam List Section -->
        <div class="exam-list">
            <h3>Existing Exams</h3>
            <table>
                <thead>
                    <tr>
                        <th>Exam Name</th>
                        <th>Exam Date</th>
                        <th>Duration</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="examRepeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("ExamName") %></td>
                                <td><%# Eval("ExamDate", "{0:MM/dd/yyyy}") %></td>
                                <td><%# Eval("Duration") %> minutes</td>
                                <td>
                                    <a href="EditExam.aspx?examId=<%# Eval("ExamId") %>">Edit</a> | 
                                    <a href="DeleteExam.aspx?examId=<%# Eval("ExamId") %>" onclick="return confirm('Are you sure you want to delete this exam?');">Delete</a>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
