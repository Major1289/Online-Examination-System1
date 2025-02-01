<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditTheory.aspx.cs" Inherits="OnlineExamSystem.EditTheory" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Theory Question</title>
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
        .form-section {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-section h3 {
            text-align: center;
        }
        .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
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
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>Edit Theory Question</h1>
        </div>

        <!-- Form Section -->
        <div class="form-section">
            <h3>Edit Question</h3>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>

            <form id="editTheoryForm" runat="server">
                <label for="txtTheoryQuestion">Question:</label>
                <textarea id="txtTheoryQuestion" runat="server" class="input-field" placeholder="Enter theory question here..."></textarea>
                <br />

                <button type="submit" class="btn" OnClick="btnSave_Click">Save</button>
            </form>
        </div>
    </div>
</body>
</html>
