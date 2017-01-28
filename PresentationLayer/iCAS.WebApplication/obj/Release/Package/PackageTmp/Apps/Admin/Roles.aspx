<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="Micro.WebApplication.MicroERP.ADMIN.Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
	<asp:UpdatePanel runat="server" ID="Panel">
		<ContentTemplate>
			<br />
			<asp:Button runat="server" ID="Button1" OnClick="UpdateButton_Click" Text="Update" />
			<asp:Button runat="server" ID="UpdateButton" OnClick="UpdateButton_Click" Text="Update" />
			<br />
			<ul class="GridView">
				<li>
					<asp:GridView runat="server" ID="gview_Roles" AutoGenerateColumns="true" />
				</li>
			</ul>
		</ContentTemplate>
	</asp:UpdatePanel>
	<asp:UpdateProgress runat="server" ID="PageUpdateProgress">
		<ProgressTemplate>
			<div id="UpdateProgress">
				<div class="UpdateProgressArea">
				</div>
			</div>
		</ProgressTemplate>
	</asp:UpdateProgress>
</asp:Content>
