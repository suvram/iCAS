<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlMenu.ascx.cs" Inherits="WebUserControlMenu" %>
<%--<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">--%>
<style>
	/*----------------------------------------------------------------*/
	/* bootstrap overriding */
	/*----------------------------------------------------------------*/
	.row {
		margin-left: 0px;
		margin-right: 0px;
	}

	.navbar {
		margin-bottom: 5px;
	}

	.navbar-brand > img {
		display: block;
		margin: 0;
		padding: 0;
		margin-top: -15px;
		margin-left: -15px;
	}

	.nav > li > a {
		position: relative;
		display: block;
		padding: 12px 4px;
		font-size: 10pt;
		font-weight: normal;
		text-transform: none;
	}

	.nav > li {
		border-left: solid 1px #565656;
		padding: 2px 4px;
	}

		.nav > li:first-child {
			border-left: none;
		}

	.navbar-collapse {
		color: #fff;
		background-image: linear-gradient(#04519b, #044687 60%, #033769);
		background-repeat: no-repeat;
		z-index: 99999999;
	}

	#TheContainerICAS #WebContentICAS #WebBodyICAS {
		height: 355px;
	}


	@media only screen and (max-device-width: 480px) {

		#HomepageSlideshow {
			display:none;
		}

		#TheContainerICAS #WebContentICAS #WebBodyICAS {
			height: 200px;
		}

		p {
			text-align: justify;
		}

		.navbar-collapse {
			z-index: 99999999999;
		}

		#WebHead {
			display: block;
			background: none;
		}

		#TheContainerICAS #WebContentICAS {
			width: 100%;
			margin: 0px auto 0 auto;
			height: auto;
			background-color: #FFF;
			border: double 1px #244D82;
			/*background: #EDF5FF url(../Images/TSDC-foot.gif) LEFT top repeat-y;*/
			background-repeat: no-repeat;
			overflow: hidden;
			padding-bottom: 5px;
			z-index: 8888888;
		}

		#TheContainerICAS #WebHead {
			color: #ccc;
			width: 100%;
			height: 75px;
			float: left;
			border-bottom: solid 1px #0033CC;
			background-color: #04164D;
			text-align: center;
		}
		/* CONTENT SLIDER */
		#content-slider {
			width: auto;
			height: 150px;
			min-height: 150px;
			margin: 0px auto;
			padding-right: -15px;
			padding-left: -15px;
		}

		/* SLIDER */
		#slider {
			background: #000;
			height: 150px;
			width: auto;
			overflow: hidden;
			position: relative;
			z-index: 0;
			border-top: none;
		}

			#slider li a img {
				width: 100%;
				height: 150px;
				text-align: center;
			}
	}

	/**/
</style>
<div class="navbar navbar-inverse" role="navigation">
	<%--<div class="web_container">--%>
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="~/Default.aspx" runat="server">
			<img src="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/Images/TSDC-WEB-HEAD-NAV-BAR-50.jpg" alt="TSDC" />

		</a>
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
			<asp:Literal runat="server" ID="lit_LoginLogout" />
			<asp:Literal runat="server" ID="lit_Register" />
			<%--<li><a href="#"><i class="fa fa-sign-in"></i>&nbsp;Login</a></li>--%>
			<%--<li><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>&nbsp;Register&nbsp;&nbsp;</a></li>--%>
		</ul>
	</div>
	<%--</div>--%>
</div>
