<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="Error500.aspx.cs" Inherits="Micro.WebApplication.App_Error.Error500" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
	<div style="margin-top: 50px; margin-left: 50px;">
		<h1 class="BigErrorText">Error!</h1>
		<br />
		<p class="ErrorMessage">Ooups! We are very sorry, because an error occured while executing the application.
			<br />
			<br />
			You may <a href="#l" style="cursor: text;" onclick="javascript:ErrorPanel.style.display='';">click here</a> to get the error details.
			<br />
			<br />
			Possible Reason:
			<asp:Label runat="server" ID="lbl_Reason" Text="untracable" /><br />
			<br />
			You can go back to
			<asp:HyperLink ID="LinkHome1" runat="server" NavigateUrl="~/APPS/Default.aspx">homepage</asp:HyperLink>
			or try <a href="#l" onclick="javascript:ReLoadPage();">again to load the page</a>. </p>
		<asp:Label ID="lbl_ErrorMessage" runat="server" Text=" "></asp:Label>
		<br />
		<br />
		<br />
		<div id="ErrorPanel" class="fontsize" style="display: none">
			<u><b>Error Description</b></u><br />
			<br />
			<b>Time :</b>
			<asp:Label ID="LabelTime" runat="server" /><br />
			<br />
			<b>Page :</b>
			<asp:Label ID="LabelErrorPage" runat="server" /><br />
			<br />
			<b>Message :</b>
			<asp:Label ID="LabelError" runat="server" /><br />
			<br />
			<b>Target :</b>
			<asp:Label ID="LabelTarget" runat="server" /><br />
		</div>
	</div>
	<script type="text/javascript">
		function ReLoadPage() {
			var RedirectPage = "<%=RedirectPage%>";

			var myDate = new Date();
			var token = '' + myDate.getSeconds() + myDate.getFullYear() + myDate.getHours() + myDate.getDate() + myDate.getMinutes() + myDate.getMonth();

			if (RedirectPage.indexOf('?') == -1) {
				RedirectPage = RedirectPage + '?T=' + token;
			}
			else {
				RedirectPage = RedirectPage + '&T=' + token;
			}

			window.location.href = RedirectPage;
		}
	</script>
</asp:Content>
