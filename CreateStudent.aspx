<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs" 
    Inherits="ADONetWebApp.CreateStudent" MasterPageFile="~/Site1.Master"%>

<asp:Content ID="mainContent" runat="server" ContentPlaceHolderID="MaincontentHolder">
     <style>
        /* Custom CSS for Create Student form */
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

        .form-check-input {
            margin-right: 10px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .form-text {
            font-size: 14px;
        }

        .text-danger {
            color: #dc3545;
        }
    </style>
    <form id="createStudentForm" runat="server" class="col-4">
        <div class="mb-3">
            <asp:Label ID="lblName" runat="server" Text="Name" CssClass="form-label"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="mb-3">
            <asp:Label ID="lblGender" runat="server" Text="Gender" CssClass="form-label"></asp:Label>
            <asp:RadioButtonList ID="rblGender" runat="server" CssClass="form-check-input" RepeatDirection="Horizontal">
                <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div class="mb-3">
            <asp:Label ID="lblTrainer" runat="server" Text="Trainer" CssClass="form-label"></asp:Label>
             <asp:DropDownList ID="ddlTrainers" runat="server">

        </asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btnCreate" runat="server" Text="Create" CssClass="btn btn-primary" 
                OnClick="btncreate_Click"  OnClientClick="return confirm('You are about to create a new Student, want to proceed?')"/>
        </div>
        <div>
            <asp:Label ID="lblMessage" runat="server" CssClass="form-text text-danger"></asp:Label>
        </div>
    </form>
</asp:Content>