<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Leaderboard.aspx.cs" Inherits="OnlineExamSystem.Leaderboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Leaderboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .leaderboard-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 900px;
        }
        .leaderboard-container h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        .leaderboard-container table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .leaderboard-container th, .leaderboard-container td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .leaderboard-container th {
            background-color: #f2f2f2;
        }
        .leaderboard-container .rank {
            font-weight: bold;
            font-size: 18px;
        }
        .leaderboard-container .user-name {
            font-size: 16px;
        }
        .leaderboard-container .score {
            font-size: 16px;
            color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="leaderboard-container">
            <h1>Admin Leaderboard</h1>

            <!-- Table to display the leaderboard -->
            <table>
                <thead>
                    <tr>
                        <th>Rank</th>
                        <th>User Name</th>
                        <th>Score</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptLeaderboard" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td class="rank"><%# Eval("Rank") %></td>
                                <td class="user-name"><%# Eval("Username") %></td>
                                <td class="score"><%# Eval("Score") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
