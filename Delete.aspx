<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" 
    Inherits="ADONetWebApp.Delete" 
    MasterPageFile="~/Site1.Master" %>

<asp:Content ID="mainContent" runat="server" ContentPlaceHolderID="MaincontentHolder">
    <style>
        /* Custom CSS for Delete Student form */
        body {
            background-image: url(Photos/pexels-maxime-francis-2246476.jpg);
            background-size: cover;
            background-position: center; 
            background-attachment: fixed; 
            background-color: rgba(255, 255, 255, 0.5); 
        }

        .col-4 {
            max-width: 400px;
            margin: auto;
            margin-top: 20%;
            padding: 20px;
            background-color: rgba(248, 249, 250, 0.5); /* Adjust opacity as needed */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .mb-3 {
            margin-bottom: 20px;
        }

        .form-label {
            font-weight: bold;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .btn-primary {
            background-color: #dc3545;
            border-color: #dc3545;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #c82333;
            border-color: #bd2130;
        }

        .form-text {
            font-size: 14px;
        }

        .text-danger {
            color: #dc3545;
        }
    </style>
       <form id="deleteStudentForm" runat="server" class="col-4">
        <div class="mb-3">
            <asp:Label ID="lblStudentId" runat="server" Text="Student ID" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtStudentId" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-primary" 
                OnClick="btnDelete_Click" OnClientClick="return confirm('You are about to delete a student, want to proceed?')" />
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" CssClass="form-text text-danger"></asp:Label>
            <asp:DropDownList ID="ddlStudents" runat="server"></asp:DropDownList>
        </div>
    </form>
</asp:Content>