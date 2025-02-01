<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="OnlineExamSystem.UserProfile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
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
        .profile-section {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .profile-section label {
            font-weight: bold;
        }
        .profile-section input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .profile-section .update-btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .profile-section .update-btn:hover {
            background-color: #0056b3;
        }
        .message {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Header -->
        <div class="header">
            <h1>User Profile</h1>
        </div>

        <!-- Profile Section -->
        <div class="profile-section">
            <h3>Profile Information</h3>
            <form id="profileForm" runat="server">
                <div>
                    <label for="txtName">Full Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="inputField" />
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic" />
                </div>

                <div>
                    <label for="txtEmail">Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="inputField" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ForeColor="Red" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" />
                </div>

                <div>
                    <label for="txtPassword">Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="inputField" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" />
                </div>

                <div>
                    <label for="txtConfirmPassword">Confirm Password</label>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="inputField" />
                    <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic" />
                </div>

                <!-- Update Button -->
                <asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile" OnClick="btnUpdateProfile_Click" CssClass="update-btn" />

                <div class="message">
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
