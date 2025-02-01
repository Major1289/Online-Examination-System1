<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MCQ.aspx.cs" Inherits="OnlineExamSystem.MCQ" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage MCQs</title>
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
        .mcq-form, .mcq-list {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .mcq-form h3, .mcq-list h3 {
            text-align: center;
        }
        .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .mcq-list table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .mcq-list table th, .mcq-list table td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        .mcq-list table th {
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
            <h1>Manage MCQs</h1>
        </div>

        <!-- MCQ Form Section -->
        <div class="mcq-form">
            <h3>Create New MCQ</h3>
            <form id="createMCQForm" runat="server">
                <label for="mcqQuestion">Question:</label>
                <input type="text" id="mcqQuestion" runat="server" class="input-field" placeholder="Enter MCQ Question" />
                <br />
                <label for="mcqOption1">Option 1:</label>
                <input type="text" id="mcqOption1" runat="server" class="input-field" placeholder="Option 1" />
                <br />
                <label for="mcqOption2">Option 2:</label>
                <input type="text" id="mcqOption2" runat="server" class="input-field" placeholder="Option 2" />
                <br />
                <label for="mcqOption3">Option 3:</label>
                <input type="text" id="mcqOption3" runat="server" class="input-field" placeholder="Option 3" />
                <br />
                <label for="mcqOption4">Option 4:</label>
                <input type="text" id="mcqOption4" runat="server" class="input-field" placeholder="Option 4" />
                <br />
                <label for="mcqAnswer">Correct Answer:</label>
                <select id="mcqAnswer" runat="server" class="input-field">
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                    <option value="4">Option 4</option>
                </select>
                <br />
                <button type="submit" class="btn" OnClick="CreateMCQ_Click">Create MCQ</button>
            </form>
        </div>

        <!-- MCQ List Section -->
        <div class="mcq-list">
            <h3>Existing MCQs</h3>
            <table>
                <thead>
                    <tr>
                        <th>Question</th>
                        <th>Option 1</th>
                        <th>Option 2</th>
                        <th>Option 3</th>
                        <th>Option 4</th>
                        <th>Answer</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="mcqRepeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("Question") %></td>
                                <td><%# Eval("Option1") %></td>
                                <td><%# Eval("Option2") %></td>
                                <td><%# Eval("Option3") %></td>
                                <td><%# Eval("Option4") %></td>
                                <td><%# Eval("Answer") %></td>
                                <td>
                                    <a href="EditMCQ.aspx?mcqId=<%# Eval("MCQId") %>">Edit</a> | 
                                    <a href="DeleteMCQ.aspx?mcqId=<%# Eval("MCQId") %>" onclick="return confirm('Are you sure you want to delete this MCQ?');">Delete</a>
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
