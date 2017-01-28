<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_StudentZone.ascx.cs" Inherits="LTPL.ICAS.WebApplication.App_UserControls.ICAS.UC_StudentZone" %>

<style type="text/css">
	@media only screen and (max-device-width: 480px) {

		#StudentZone,#Div_Student
		{
			height: 105px;
		}

		#WebZones #Div_Student,
		#WebZones #Div_Staff {
			margin: 5px 0px;
			overflow: hidden;
			display: block;
			width: 100%;
		}

			#ctrl_StudentZone_ulctrl_AskLoginStudent,
			#WebZones #Div_Student > ul,
			#WebZones #Div_Staff ul,
			.AskLoginStudent {
				width: 100%;
				list-style-type: none;
				margin: 0;
				padding: 0;
			}

		.AskLoginStudent {
			color: blue;
			width: 100%;
			height: 100px;
			display: block;
			float: left;
			margin: 10px 0px;
		}

		.StaffZoneLink100,
		.StudentZoneLink {
			display: block;
			float: left;
			width: 50%;
			margin: 0px;
			padding: 0px;
			text-align: justify;
			background-color: transparent;
		}

		#WebZones #Div_Student  ul  li {
			width: 49%;
			list-style-type: none;
			margin: 0;
			padding: 0;
			 
			padding: 5px 0px;
		}

		 
		#WebZones #Div_Staff ul  li {
			width: 48%;
			list-style-type: none;
			margin: 1% 0px 0px 0px;
			padding: 0;
			padding: 5px 0px;
		}

		#WebZones #Div_Student  ul  li.WebpartTitle
		{
			width: 100%;
			margin-bottom: 10px;
		}
	}
</style>

<div id="StudentZone" class="col-md-6">
	<ul class="AskLoginStudent">
		<li class="WebpartTitle">
			<b>Students Zone:</b>
		</li>
		<li class="StudentZoneLink" id="li_StudentZoneLink" runat="server">
			<asp:Panel runat="server" ID="before_login">
				<asp:Literal runat="server" ID="lit_BeforeLogin" />
			</asp:Panel>
			<asp:Panel runat="server" ID="after_login">
				<asp:Literal runat="server" ID="lit_Welcome" Text="" />
				<asp:Literal runat="server" ID="lit_AfterLogin" />
			</asp:Panel>
		</li>
		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/about-student-composition">Students Composition</a>
		</li>

		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/about-student-union">Students Association</a>
		</li>

		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/about-student-achievements">Awards/Achievements</a>
		</li>

		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/about-student-career-counselling">Career Counselling Cell</a>

		</li>
		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/about-best-links">Some Best & Useful Links</a>
		</li>
	</ul>

</div>

