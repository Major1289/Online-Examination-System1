<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineExamSystem.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
        }
        .container {
            display: flex;
            flex-direction: column;
            height: 100vh;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .content {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
            margin-top: 20px;
        }
        .card {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .card h3 {
            font-size: 24px;
            color: #333;
        }
        .card p {
            font-size: 18px;
            color: #555;
        }
        .card a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        .card a:hover {
            text-decoration: underline;
        }
        .logout-button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #ff4b5c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .logout-button:hover {
            background-color: #e63946;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>Welcome, <asp:Label ID="lblUserName" runat="server"></asp:Label></h1>
            <p>Your personalized dashboard</p>
        </div>

        <!-- Main Content -->
        <div class="content">
            <!-- Upcoming Exams -->
            <div class="card">
                <h3>Upcoming Exams</h3>
                <p>2</p>
                <a href="Exams.aspx">View Exams</a>
            </div>

            <!-- Recent Results -->
            <div class="card">
                <h3>Recent Results</h3>
                <p>5</p>
                <a href="Results.aspx">View Results</a>
            </div>

            <!-- Performance Summary -->
            <div class="card">
                <h3>Your Performance</h3>
                <p>85%</p>
                <a href="Profile.aspx">View Profile</a>
            </div>
        </div>

        <!-- Logout Button -->
        <div style="text-align: center; margin-top: 20px;">
            <button class="logout-button" OnClick="Logout_Click">Logout</button>
        </div>
    </div>
</body>
</html>
