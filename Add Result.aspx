<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="OnlineExamSystem.Result" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .result-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 600px;
        }
        .result-container h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        .result-container p {
            font-size: 18px;
            margin: 10px 0;
        }
        .message {
            font-size: 20px;
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
        .pass {
            color: green;
        }
        .fail {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="result-container">
            <h1>Exam Result</h1>
            
            <p><strong>Total Questions:</strong> <asp:Label ID="lblTotalQuestions" runat="server"></asp:Label></p>
            <p><strong>Correct Answers:</strong> <asp:Label ID="lblCorrectAnswers" runat="server"></asp:Label></p>
            <p><strong>Incorrect Answers:</strong> <asp:Label ID="lblIncorrectAnswers" runat="server"></asp:Label></p>
            <p><strong>Your Score:</strong> <asp:Label ID="lblScore" runat="server"></asp:Label></p>

            <div class="message">
                <asp:Label ID="lblPassFail" runat="server" CssClass="pass"></asp:Label>
            </div>

            <button type="button" onclick="window.location='Exam.aspx';">Take Exam Again</button>
        </div>
    </form>
</body>
</html>
