<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/ICAS.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="LTPL.ICAS.WebApplication.ContactUs" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style type="text/css">
		body
		{
			background-image: url(/Themes/Default/Images/micro-customer-support.jpg);
			color: #000099;
		}
		ul#ContactUs
		{
			margin: 0px;
			padding: 0px;
		}
		
		div#ColumnOne
		{
			display: block;
			float: left;
			width: 64%;
			border: solid 1px #DCDCDC;
			margin: 10px 0px 0px 20px;
			padding: 10px 4px;
		}
		div#ColumnTwo
		{
			display: block;
			float: left;
			width: 28%;
			border: solid 1px #DCDCDC;
			margin: 10px;
			padding: 5px 4px;
			background-image: url(/Themes/Default/Images/micro-customer-support.jpg);
			background-position: left;
			
		}
		.PageSubTitle
		{
			margin-bottom: 5px;
		}
		.Separator
		{
			display: block;
			float: left;
			width: 80%;
			line-height: 1px;
			border-top: solid 1px #ccc;
			margin: 5px;
		}
		.FormButton_Top
		{
			text-align: right;
			width: 95%;
		}
		.FormButton_Top input
		{
			margin-top: 10px;
			background-image: url(../Images/bg-menu-main.png);
			background-repeat: repeat-x;
			padding: 4px;
			height: 20px;
		}
		
		ul.Address
		{
			list-style-type: none;
			
		}

		div#ColumnOne ul#ContactUs li
		{
			margin: 2px 0px;
		}
		
		div#ColumnOne ul#ContactUs li.FormLabel
		{
			display: block;
			float: left;
			width: 20%;
		}
		div#ColumnOne ul#ContactUs li.FormValue
		{
			display: block;
			float: left;
			width: 78%;
		}
		div#ColumnOne ul#ContactUs li.FormValue100pc
		{
			display: block;
			float: left;
			width: 99%;
		}
		
		.FormLink
		{
			display: block;
			float: left;
			width: 99%;
			text-align: center;
		}
	</style>
	<h1 class="PageTitle">
		Contact Us:
	</h1>
	<div id="ColumnOne">
		<ul id="ContactUs">
			<li class="FormLabel">Contact For: </li>
			<li class="FormValue">
				<asp:DropDownList runat="server" ID="ddl_ContactReason" AutoPostBack="true">
					<asp:ListItem Text="Admission" Value="Admission" />
					<asp:ListItem Text="Feedback" Value="Feedback" />
					<asp:ListItem Text="Donation" Value="Donation" />
					<asp:ListItem Text="Events" Value="Events"  Selected="True"/>

				</asp:DropDownList>
			</li>
			<%--<li class="Separator" />--%>
			<!-- sender's name -->
			<li class="FormLabel">
				<asp:Label runat="server" ID="lbl_Name" Text="Your Name:" />
			</li>
			<li class="FormValue">
				<asp:TextBox runat="server" ID="txt_Name" Width="273px" />
			</li>
			<!-- sender's email -->
			<li class="FormLabel">
				<asp:Label runat="server" ID="Label3" Text="Email Address:" />
			</li>
			<li class="FormValue">
				<asp:TextBox runat="server" ID="txt_Email" Width="272px" />
			</li>
			<!-- sender's subject -->
			<li class="FormLabel">
				<asp:Label runat="server" ID="Label2" Text="Subject:" />
			</li>
			<li class="FormValue">
				<asp:TextBox runat="server" ID="txt_Subject" Width="368px" />
				
			</li>
			<li class="FormValue100pc">
				<asp:Label runat="server" ID="Label1" Text="Mail Message:" />
			</li>
			<li class="FormValue100pc">
				<asp:TextBox runat="server" ID="txt_SupportBody" TextMode="MultiLine" Rows="10" Width="96%" Height="82px" />
			</li>
			<li class="FormSpacer" />
			<li class="FormButton_Top">
				<asp:Button runat="server" ID="btn_SendMail" Text=" SUBMIT " CssClass="btn btn-primary" OnClick="btn_SendMail_Click" Height="29px" />
			</li>
			<li class="FormSpacer" />
			<li class="FormValue">
				<asp:Label runat="server" ID="lit_Message" Text="" ForeColor="Red" Font-Size="12pt" />
			</li>
			 
		</ul>
	</div>
	<div id="ColumnTwo">
		<ul class="Address">
			<li class="PageSubTitle">
				<b>Office Address:</b>
			</li>
			<li class="FormSpacer" />
			<li class="FormValue">Tentulia Sasan Debastan College,</li>
			<li class="FormValue">B.D.Pur Sasan (Ganjam)</li>
            <li class="FormValue">Odisha, India - 761120</li>
			<li class="FormValue">Phone: +91-06818-267959</li>
			<li class="FormValue">Web: <a href='http://www.tsdcollege.in' target="_blank">http://www.tsdcollege.in</a></li>


			<%--<li class="Link"><a href="/Index.aspx">Back to Homepage</a> </li>--%>
	</div>
</asp:Content>
