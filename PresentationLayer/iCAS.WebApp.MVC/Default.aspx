<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="iCAS.WebApp.MVC._Default" %>

<%@ Register Src="UserControl/ICAS/UC_StudentZone.ascx" TagName="UC_StudentZone" TagPrefix="uc1" %>

<%@ Register Src="UserControl/ICAS/UC_StaffZone.ascx" TagName="UC_StaffZone" TagPrefix="uc2" %>

<%@ Register Src="UserControl/ICAS/UC_EstablishmentZone.ascx" TagName="UC_EstablishmentZone" TagPrefix="uc3" %>

<%@ Register Src="UserControl/ICAS/UC_SlideShowSimple.ascx" TagName="UC_SlideShowSimple" TagPrefix="uc4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	 
	<div class="jumbotron">
		<%-- <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-large">Learn more &raquo;</a></p>--%>
		<uc4:UC_SlideShowSimple ID="UC_SlideShowSimple1" runat="server" />
	</div>

	<div class="row">
		<div class="col-md-4">
			<%-- <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>--%>

			<uc1:UC_StudentZone ID="UC_StudentZone1" runat="server" />

		</div>
		<div class="col-md-4">
			<%--<h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>--%>
			<uc2:UC_StaffZone ID="UC_StaffZone1" runat="server" />
		</div>
		<div class="col-md-4">
			<%--<h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>--%>

			<uc3:UC_EstablishmentZone ID="UC_EstablishmentZone1" runat="server" />

		</div>
	</div>

</asp:Content>
