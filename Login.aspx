< %@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineExamSystem.login" % >
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .login-container h1 {
            margin-bottom: 20px;
        }
        .login-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .login-container button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h1>Login</h1>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
