<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlMenu.ascx.cs" Inherits="iCAS.WebApp.MVC.WebUserControlMenu" %>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
<%--	<div class="container">--%>
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Gharabari</a>
		</div>
		<div class="collapse navbar-collapse">

			<asp:Literal runat="server" ID="lit_MenuItems" />

			<ul class="nav navbar-nav navbar-right">
				<%--<li>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
				</li>--%>
				<li><a href="#"><i class="fa fa-sign-in"></i>&nbsp;Login</a></li>
				<li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Register&nbsp;&nbsp;</a></li>
			</ul>
		</div>
	<%--</div>--%>
</div>
