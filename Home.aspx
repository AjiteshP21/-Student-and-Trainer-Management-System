<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ADONetWebApp.Home" MasterPageFile="~/Site1.Master"  %>

<asp:Content ID="contentPage" runat="server" ContentPlaceHolderID="MaincontentHolder">
    <style>
        body {
            background-color: aquamarine;
            font-family: Arial, sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 960px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }

        h2 {
            color: #333;
            margin-top: 0;
        }

        hr {
            border: none;
            border-top: 1px solid #ddd;
            margin: 20px 0;
        }

        .section {
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
        }

        .btn {
            display: inline-block;
            padding: 8px 16px;
            font-size: 14px;
            border: 1px solid #007bff;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            cursor: pointer;
            border-radius: 4px;
        }

        .btn:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>

    <div class="container">
        <h2>Welcome to Our Website</h2>
        <hr />

        <div class="section">
            <h3>Search Student</h3>
            <form runat="server">

           
            <div class="form-group">
                <label for="txtStudentName">Name:</label>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            </div>
            <!-- Add more fields for student information -->
            <asp:Button ID="btnCreateStudent" runat="server" Text="Create Student" OnClick="btnCreateStudent_Click" CssClass="btn" />
         </form>
               </div>

    </div>
</asp:Content>