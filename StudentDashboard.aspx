<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="ADONetWebApp.StudentDashboard" MasterPageFile="~/Site1.Master" %>

<asp:Content ID="pageContent" runat="server" ContentPlaceHolderID="MaincontentHolder">
    <style>
        body {
            background-image: url(Photos/pexels-maxime-francis-2246476.jpg);
            background-size: cover;  
            background-position: center; 
            background-attachment: fixed; 
             background-color: rgba(255, 255, 255, 0.5); 
        }

       .delete-student-link,
       .create-student-link {
           color: red;
           font-size: 28px;
           font-weight: bold;
           text-decoration: none;
           display: block;
           text-align: center;

       }

         .search-form {
            margin-bottom: 20px;
        }

        .search-results {
            margin-top: 20px;
        }
        .heading-box {
            background-color: rgba(255, 255, 255, 0.3); 
            padding: 20px;
            border-radius: 10px;
        }


        .student-grid {
            width: 100%; 
            height: 400px; 
        }

        .student-grid th {
            background-color: transparent;
        }

        .student-grid th,
        .student-grid td {
            padding: 10px;
            border: 1px solid #ccc;
        }
    </style>
    <div style="padding: 10px;">
        <asp:HyperLink ID="linkCreateStudent" runat="server" NavigateUrl="~/CreateStudent.aspx" CssClass="create-student-link">Create New Student</asp:HyperLink>
   <asp:HyperLink ID="linkDeleteStudent" runat="server" NavigateUrl="~/Delete.aspx" CssClass="delete-student-link">Delete Student</asp:HyperLink>
        </div>
    <div style="padding: 20px;">
        <h2 style="color: white;">All Students</h2>
        <form runat="server">
            <asp:GridView ID="gvStudent" runat="server" CssClass="student-grid" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </form>
    </div>
</asp:Content>