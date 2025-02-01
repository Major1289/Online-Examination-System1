<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leaderboard.aspx.cs" Inherits="OnlineExamSystem.Leaderboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Leaderboard</title>
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
        .leaderboard-section {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .leaderboard-section h3 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        tr.top-performer {
            background-color: #ffd700; /* Gold color for top performer */
        }
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination a {
            padding: 8px 16px;
            margin: 4px;
            text-decoration: none;
            border: 1px solid #ddd;
            color: #007bff;
        }
        .pagination a:hover {
            background-color: #007bff;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>Leaderboard</h1>
        </div>

        <!-- Leaderboard Section -->
        <div class="leaderboard-section">
            <h3>Top Performers</h3>

            <table>
                <thead>
                    <tr>
                        <th>Rank</th>
                        <th>Student Name</th>
                        <th>Score</th>
                    </tr>
                </thead>
                <tbody id="leaderboardTable" runat="server">
                    <!-- Top performers will be dynamically added here -->
                </tbody>
            </table>

            <!-- Pagination Controls -->
            <div class="pagination" id="paginationControls" runat="server">
                <!-- Pagination links will be dynamically generated here -->
            </div>
        </div>
    </div>
</body>
</html>
