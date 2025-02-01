<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OnlineExamSystem.Admin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
        }
        .container {
            display: flex;
            height: 100vh;
        }
        .sidebar {
            background-color: #007bff;
            width: 220px;
            color: white;
            padding: 20px;
        }
        .sidebar h2 {
            text-align: center;
        }
        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            margin: 10px 0;
            padding: 10px;
            background-color: #0056b3;
            border-radius: 4px;
            text-align: center;
        }
        .sidebar a:hover {
            background-color: #004085;
        }
        .main-content {
            flex-grow: 1;
            padding: 20px;
        }
        .header {
            background-color: #007bff;
            color: white;
            padding: 10px;
            text-align: center;
        }
        .dashboard {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 20px;
        }
        .dashboard .card {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .card h3 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }
        .card p {
            margin: 10px 0;
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
    </style>
</head>
<body>
    <div class="container">
        <!-- Sidebar -->
        <div class="sidebar">
            <h2>Admin Dashboard</h2>
            <a href="Users.aspx">Manage Users</a>
            <a href="Leaderboard.aspx">View Leaderboard</a>
            <a href="Exam.aspx">Manage Exams</a>
            <a href="Result.aspx">View Results</a>
            <a href="Reports.aspx">View Reports</a>
            <a href="Settings.aspx">Settings</a>
            <a href="Logout.aspx">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>Welcome to the Admin Dashboard</h1>
            </div>

            <div class="dashboard">
                <!-- Dashboard Cards -->
                <div class="card">
                    <h3>Total Users</h3>
                    <p>500</p>
                    <a href="Users.aspx">View Details</a>
                </div>
                <div class="card">
                    <h3>Total Exams</h3>
                    <p>15</p>
                    <a href="Exam.aspx">View Exams</a>
                </div>
                <div class="card">
                    <h3>Total Results</h3>
                    <p>1200</p>
                    <a href="Result.aspx">View Results</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
