<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="Maintenance.aspx.cs" Inherits="Micro.WebApplication.App_Error.Maintenance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
	<div style="margin-top: 30px; margin-left: 30px;">
		<h1 class="BigErrorText">Website Under Maintenance</h1><p class="ErrorMessage">Dear User,<br />
			<br />
			Due to application maintenance reasons, <br /><br />this service is currently unavailable
			till 
			<asp:Label ID="LabelEnglishDateTime" runat="server" />. 
			
			<br /><br /><br /><br />
			Sorry for any inconvenience.<br />
			<br />
			<br />
			<br />
		</p>
	</div>
</asp:Content>
