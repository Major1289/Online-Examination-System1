<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exam Result.aspx.cs" Inherits="OnlineExamSystem.Result" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Results</title>
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
        .result-section {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .result-section h3 {
            text-align: center;
        }
        .result {
            font-size: 20px;
            text-align: center;
        }
        .pass {
            color: green;
        }
        .fail {
            color: red;
        }
        .btn {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <!-- Header -->
            <div class="header">
                <h1>Exam Results</h1>
            </div>

            <!-- Result Section -->
            <div class="result-section">
                <h3>Your Exam Result</h3>

                <!-- Display result message -->
                <div class="result">
                    <h4>Total Score: <asp:Label ID="lblScore" runat="server"></asp:Label></h4>
                    <h4>Total Questions: <asp:Label ID="lblTotalQuestions" runat="server"></asp:Label></h4>
                    <h4>Pass/Fail Status: <asp:Label ID="lblPassFailStatus" runat="server"></asp:Label></h4>
                </div>

                <!-- Optionally display answers -->
                <div id="answerReview" runat="server">
                    <h4>Review Your Answers:</h4>
                    <asp:Table ID="answersTable" runat="server" BorderWidth="1" Width="100%">
                        <HeaderStyle BackColor="#007bff" ForeColor="White" />
                        <HeaderRow>
                            <asp:TableHeaderCell>Question</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Your Answer</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Correct Answer</asp:TableHeaderCell>
                        </HeaderRow>
                        <Rows>
                            <!-- The answers will be dynamically populated here -->
                        </Rows>
                    </asp:Table>
                </div>

                <!-- Button to return to the exam dashboard -->
                <asp:Button ID="btnBackToDashboard" runat="server" CssClass="btn" Text="Back to Dashboard" OnClick="BackToDashboard_Click" />
            </div>
        </div>
    </form>
</body>
</html>
