<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="OnlineExamSystem.Exam" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .exam-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 600px;
        }
        .exam-container h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        .question {
            margin-bottom: 20px;
        }
        .question label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .exam-container input[type="radio"] {
            margin-right: 10px;
        }
        .exam-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .exam-container button:hover {
            background-color: #0056b3;
        }
        .message {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="exam-container">
            <h1>Online Exam</h1>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message"></asp:Label>

            <asp:Repeater ID="rptQuestions" runat="server">
                <ItemTemplate>
                    <div class="question">
                        <label><%# Eval("QuestionText") %></label>
                        <asp:RadioButtonList ID="rblOptions" runat="server">
                            <asp:ListItem Text='<%# Eval("OptionA") %>' Value="A" />
                            <asp:ListItem Text='<%# Eval("OptionB") %>' Value="B" />
                            <asp:ListItem Text='<%# Eval("OptionC") %>' Value="C" />
                            <asp:ListItem Text='<%# Eval("OptionD") %>' Value="D" />
                        </asp:RadioButtonList>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <button type="submit" id="btnSubmit" runat="server" OnClick="btnSubmit_Click">Submit Exam</button>
        </div>
    </form>
</body>
</html>
