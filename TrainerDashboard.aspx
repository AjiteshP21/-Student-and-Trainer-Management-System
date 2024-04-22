<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="TrainerDashboard.aspx.cs" 
    Inherits="ADONetWebApp.TrainerDashboard" MasterPageFile="~/Site1.Master" %>

<asp:Content Id="pageContent" runat="server" ContentPlaceHolderID="MaincontentHolder">
    <style>
    body {
        background-image: url(Photos/pexels-maxime-francis-2246476.jpg);

        background-size: cover;
        background-position: center; 
        background-attachment: fixed; 
         background-color: rgba(255, 255, 255, 0.5); 
    }

    .heading-box {
        background-color: rgba(255, 255, 255, 0.3); 
        padding: 20px;
        border-radius: 10px;
    }

    


    .trainer-grid {
        width: 100%; 
        height: 400px;
    }

    .trainer-grid th {
        background-color: transparent; /* Make the table header transparent */
    }

    .trainer-grid th,
    .trainer-grid td {
        padding: 10px;
        border: 1px solid #ccc;
    }
</style>
    <div style="padding: 20px;">
        <h2 style="color: white;">All Trainers</h2>
        <form runat="server">
            <asp:GridView ID="gvTrainer" runat="server" CssClass="trainer-grid" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <asp:Label ID="lblMessage" runat="server" ForeColor ="Blue"></asp:Label>
        </form>
    </div>
</asp:Content>