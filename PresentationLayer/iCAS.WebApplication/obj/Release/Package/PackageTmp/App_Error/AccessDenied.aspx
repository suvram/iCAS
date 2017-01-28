<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="AccessDenied.aspx.cs" Inherits="Micro.WebApplication.App_Error.AccessDenied" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
    <div style="margin-top: 30px; margin-left: 30px;">
        <h1 class="BigErrorText">Access Denied! </h1>

        <p class="ErrorMessage">
            Please note that, certain page requires to pass through a valid authentication process. 
        </p>

        <p>
            Please <a href="../APPS/UserLogin.aspx">Login</a> to access the page.
        </p>
        <br />
        <asp:Label ID="lbl_SupportMessage" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <br />
        Thanks & Regards,
		IT Team
    </div>
</asp:Content>
