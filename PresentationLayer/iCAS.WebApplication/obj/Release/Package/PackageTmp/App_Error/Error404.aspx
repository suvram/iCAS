<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="Error404.aspx.cs" Inherits="Micro.WebApplication.App_Error.Error404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
	
	<div style="margin-top: 50px; margin-left: 50px;">
		<h1 class="BigErrorText">ERROR 404: file not found.</h1>
		
		<p class="ErrorMessage">
		Ooups!, Its an error <br />
            
       <h2>The file (<i><asp:Literal runat="server" ID="lit_FilePath" /></i>) doesn't exists.</h2>
		

            <br />
            <br />
        
        <asp:HyperLink ID="LinkHome1" runat="server" NavigateUrl="~/Default.aspx">Please click here to navigate to Homepage</asp:HyperLink>
       
        </p>
		
	</div>
</asp:Content>
