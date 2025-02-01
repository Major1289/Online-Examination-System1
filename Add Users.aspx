<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="OnlineExamSystem.Users" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Users</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .users-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 800px;
        }
        .users-container h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        .users-container table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        .users-container th, .users-container td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .users-container th {
            background-color: #f2f2f2;
        }
        .users-container .button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin: 10px 0;
        }
        .users-container .button:hover {
            background-color: #0056b3;
        }
        .users-container .button-edit {
            background-color: #ffc107;
        }
        .users-container .button-edit:hover {
            background-color: #e0a800;
        }
        .users-container .button-delete {
            background-color: #dc3545;
        }
        .users-container .button-delete:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="users-container">
            <h1>Manage Users</h1>

            <!-- Button to add a new user -->
            <asp:Button ID="btnAddUser" runat="server" Text="Add New User" CssClass="button" OnClick="btnAddUser_Click" />

            <!-- Table to display the list of users -->
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th>Role</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptUsers" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("UserID") %></td>
                                <td><%# Eval("Username") %></td>
                                <td><%# Eval("Email") %></td>
                                <td><%# Eval("Role") %></td>
                                <td>
                                    <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="button button-edit" CommandArgument='<%# Eval("UserID") %>' OnClick="btnEdit_Click" />
                                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button button-delete" CommandArgument='<%# Eval("UserID") %>' OnClick="btnDelete_Click" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
