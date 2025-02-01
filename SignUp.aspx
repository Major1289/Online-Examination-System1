<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="OnlineExamSystem.signUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .signup-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .signup-container h1 {
            margin-bottom: 20px;
        }
        .signup-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .signup-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .signup-container button:hover {
            background-color: #0056b3;
        }
        .signup-container .error {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="signup-container">
            <h1>Sign Up</h1>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="error"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" Placeholder="Full Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic" />

            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email" TextMode="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" Display="Dynamic" />

            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" />

            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Placeholder="Confirm Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required." ForeColor="Red" Display="Dynamic" />
            <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." ForeColor="Red" Display="Dynamic" />

            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
        </div>
    </form>
</body>
</html>
