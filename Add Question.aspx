<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="OnlineExamSystem.Question" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Question</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .question-container {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 80%;
            max-width: 600px;
        }
        .question-container h1 {
            margin-bottom: 20px;
            text-align: center;
        }
        .question-container input, .question-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .question-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .question-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .question-container button:hover {
            background-color: #0056b3;
        }
        .message {
            margin-top: 20px;
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="question-container">
            <h1>Add New Question</h1>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="message"></asp:Label>
            
            <asp:TextBox ID="txtQuestionText" runat="server" Placeholder="Enter question text" TextMode="MultiLine" Rows="3"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvQuestionText" runat="server" ControlToValidate="txtQuestionText" ErrorMessage="Question text is required." ForeColor="Red" Display="Dynamic" />
            
            <asp:TextBox ID="txtOptionA" runat="server" Placeholder="Option A"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOptionA" runat="server" ControlToValidate="txtOptionA" ErrorMessage="Option A is required." ForeColor="Red" Display="Dynamic" />
            
            <asp:TextBox ID="txtOptionB" runat="server" Placeholder="Option B"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOptionB" runat="server" ControlToValidate="txtOptionB" ErrorMessage="Option B is required." ForeColor="Red" Display="Dynamic" />
            
            <asp:TextBox ID="txtOptionC" runat="server" Placeholder="Option C"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOptionC" runat="server" ControlToValidate="txtOptionC" ErrorMessage="Option C is required." ForeColor="Red" Display="Dynamic" />
            
            <asp:TextBox ID="txtOptionD" runat="server" Placeholder="Option D"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOptionD" runat="server" ControlToValidate="txtOptionD" ErrorMessage="Option D is required." ForeColor="Red" Display="Dynamic" />
            
            <asp:DropDownList ID="ddlCorrectAnswer" runat="server">
                <asp:ListItem Text="Select Correct Answer" Value="" />
                <asp:ListItem Text="A" Value="A" />
                <asp:ListItem Text="B" Value="B" />
                <asp:ListItem Text="C" Value="C" />
                <asp:ListItem Text="D" Value="D" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCorrectAnswer" runat="server" ControlToValidate="ddlCorrectAnswer" InitialValue="" ErrorMessage="Correct answer is required." ForeColor="Red" Display="Dynamic" />
            
            <button type="submit" id="btnSubmitQuestion" runat="server" OnClick="btnSubmitQuestion_Click">Submit Question</button>
        </div>
    </form>
</body>
</html>
