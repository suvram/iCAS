<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_StudentZone.ascx.cs" Inherits="UC_StudentZone" %>

<%--<style>
	#WebZones #Div_Student a.view_profile {
		text-align: center;
		width: 90%;
		margin: 2px 10px;
		padding: 2px 10px;
		background-color: navy;
		color: white;
		-webkit-border-radius: 10px;
	}
</style>
--%>
<div id="StudentZone" class="col-md-6">
	<ul class="AskLoginStudent">
		<li class="WebpartTitle">
			<div id="WebpartTitleStudent" />
		</li>
		<li class="StudentZoneLink" id="li_StudentZoneLink" runat="server">
			<asp:Panel runat="server" ID="before_login">
				<asp:Literal runat="server" ID="lit_BeforeLogin" />
			</asp:Panel>
			<asp:Panel runat="server" ID="after_login">
				<asp:Literal runat="server" ID="lit_Welcome" Text="Welcome" />
				<asp:Literal runat="server" ID="lit_AfterLogin" />
			</asp:Panel>
		</li>
		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/Activties.aspx?Page=College_Associations_Students_Composition">Students Composition</a>
		</li>

		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/Activties.aspx?Page=College_Associations_Students_Union">Students Union/Association</a>
		</li>

		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/About.aspx?Page=StudentAchievements">Awards and Achievements</a>
		</li>

		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/About.aspx?Page=StudentCareerCounselling">Career Counselling Cell</a>

		</li>
		<li class="StudentZoneLink">
			<a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/icas/about.aspx?page=best_links">Some Best & Useful Links</a>
		</li>
	</ul>

</div>

