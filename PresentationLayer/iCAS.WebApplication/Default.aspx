<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/ICAS.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Micro.WebApplication.Default" %>

<%@ Register Src="App_UserControls/UC_WebUserControlSlider.ascx" TagName="UC_WebUserControlSlider" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<style type="text/css">
		#QuoteCollegeUl {
			display: block;
			float: left;
			width: 96%;
			margin: 1% 0;
			padding: 0;
			text-align: center;
		}


		#WebBodyICAS #LeftSide ul li.QuoteLi {
			display: block;
			float: left;
			width: 99%;
			text-align: center;
			font-family: Georgia,"Times New Roman",serif;
			font-size: 26px;
			color: #1A385E;
			margin: 0;
			text-align: center;
			text-transform: uppercase;
		}

		#WebBodyICAS #LeftSide ul li.QuoteLegend {
			font-size: .8em;
			color: #660;
			float: right;
		}

		@media only screen and (max-device-width: 480px) {

			#QuoteCollegeUl {
			display: block;
			float: left;
			width: 96%;
			margin: 1% 0;
			padding: 0;
			text-align: center;
		}

			#WebBodyICAS #LeftSide ul li.QuoteLi {
				display: block;
				float: left;
				width: 100%;
				margin: 0;
				padding: 0;
				text-align: center;
				font-family: Georgia,"Times New Roman",serif;
				font-size: 16px;
				font-weight:bold;
				color: #1A385E;
				text-transform: uppercase;
			}

			#WebBodyICAS #LeftSide ul li.QuoteLegend {
				font-size: .8em;
				color: #660;
				float: right;
			}
		}
	</style>
	<div id="HomepageSlideshow">
		<uc1:UC_WebUserControlSlider ID="UC_WebUserControlSlider1" runat="server" />
		<ul id="QuoteCollegeUl">
			<li class="QuoteLi">“A NAAC Accrediated 'Grade-B' College”  <span class="QuoteLegend">― Established: 1981 </span>
			</li>
		</ul>
	</div>
</asp:Content>
