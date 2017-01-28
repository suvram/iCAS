<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_StaffZone.ascx.cs" Inherits="LTPL.ICAS.WebApplication.App_UserControls.ICAS.UC_StaffZone" %>

<div id="StaffZone" class="col-md-6">
    <ul>
        <li class="WebpartTitle" style="text-align:center;">
            <b>-: &nbsp; &nbsp; Staffs Zone &nbsp; &nbsp; :-</b>
        </li>
        <li class="StaffZoneLink100">
            <asp:Literal runat="server" ID="lit_Welcome" Text="" />
        </li>
        
<%--        <li class="StaffZoneLink">
            <a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/Staffs.aspx?Category=N">Non-Teaching Staffs</a>
        </li>--%>

        <li class="StaffZoneLink">
            <a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/About.aspx?Page=StaffAchievements">Achievements</a>
        </li>
        <li class="StaffZoneLink">
            <a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/Staffs.aspx"><span class="glyphicons glyphicons-group"></span> College Staffs</a>
        </li>
        <li class="StaffZoneLink">
            <a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/About.aspx?Page=StaffAssociation">Associations</a>
        </li>
        <li class="StaffZoneLink">
            <a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/about-staffdistributioncurricularactivities">Extra Curriculars</a>
        </li>
        <li class="StaffZoneLink100">
            <a href="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/ICAS/About.aspx?Page=StaffPrincipalsList">List of Principals</a>
        </li>
    </ul>
</div>
