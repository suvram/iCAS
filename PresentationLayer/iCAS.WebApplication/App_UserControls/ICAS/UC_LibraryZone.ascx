<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_LibraryZone.ascx.cs" Inherits="LTPL.ICAS.WebApplication.App_UserControls.ICAS.UC_LibraryZone" %>
<style type="text/css">
	.eLibraryBox {
		background: #74A6FB;
		padding: 15px;
		color: #fff;
		font-size: 20px;
		margin-bottom: 10px;
		margin-top: 20px;
		float: left;
		display: block;
		width: 100%;
	}

	.onlineBox {
		background: #F07A4C;
		padding: 15px;
		color: #fff;
		font-size: 20px;
		margin-bottom: 10px;
		margin-top: 20px;
		float: left;
		display: block;
		width: 100%;
	}

	.eBookBox {
		background: #DFA154;
		padding: 15px;
		color: #fff;
		font-size: 20px;
		margin-bottom: 10px;
		margin-top: 20px;
		float: left;
		display: block;
		width: 100%;
	}

	#LibraryZone > div > a {
		transition: all 0.7s ease;
		text-decoration: none;
		font-family: Lato, serif;
		font-size: medium;
	}

	@media only screen and (max-device-width: 480px) {

		#LibraryZone {
			display: block;
			float: left;
			width: 108%;
			margin: 0;
			padding: 0;
			margin-left: -4%;
			margin-right: -2%;
		}
		/*
		.onlineBox,
		.eLibraryBox,
		eBookBox {
			padding: 1%;
			margin: 0;
			width: 96%;
		}

			#LibraryZone > div > a {
				display: block;
				float: left;
				transition: all 0.7s ease;
				text-decoration: none;
				font-family: Lato, serif;
				font-size: 10pt;
				text-align: center;
				padding: 20px;
				width: 90%;
			}*/


	}
</style>
<div id="LibraryZone">
	<%--<ul>
        <li class="WebpartTitle">Library Zone:</li>
        <li class="LibraryZoneLink">
            <a href="#">LibraryZoneLink 1</a>
        </li>
         <li class="LibraryZoneLink">
            <a href="#">LibraryZoneLink 2</a>
        </li>
         <li class="LibraryZoneLink">
            <a href="#">LibraryZoneLink 3</a>
        </li>
         <li class="LibraryZoneLink">
            <a href="#">LibraryZoneLink 4</a>
        </li>
        <li class="WebpartSubTitle">Library Sub-Zone</li>
        
         <li class="LibraryZoneLink">
            <a href="#">Search Books </a>
        </li>
         <li class="LibraryZoneLink">
            <a href="#">Issue/Return Book</a>
        </li>
        <li class="LibraryZoneLink">
            <a href="#">Suggest a Book</a>
        </li>
         
         <li class="UCBodyReadMore"><a href="#">more...</a></li>
        
    </ul>--%>
	<%--<div class="col-md-4">
		<a href="library.tsdcollege.in" class="eLibraryBox" target="_blank">
			<img src="http://bjbcollege.in/images/e-library.png" alt="College e-Library" title="College e-Library">
			College e-Library
		</a>
	</div>
	<div class="col-md-4">
		<a href="library.tsdcollege.in" class="eLibraryBox" target="_blank">
			<img src="http://bjbcollege.in/images/e-library.png" alt="College e-Library" title="College e-Library">
			Online Book Search
		</a>
	</div>
	<div class="col-md-4">
		<a href="library.tsdcollege.in" class="eLibraryBox" target="_blank">
			<img src="http://bjbcollege.in/images/e-library.png" alt="College e-Library" title="College e-Library">
			College e-Library
		</a>
	</div>--%>

	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

		<a href="http://lib.tsdcollege.in" class="onlineBox" target="_blank">
			<img src="http://bjbcollege.in/images/book-search.png" alt="Online Book Search" title="Book Search">
			Online Book Search
		</a>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

		<a href="http://lib.tsdcollege.in" class="eLibraryBox" target="_blank">
			<img src="http://bjbcollege.in/images/e-library.png" alt="College e-Library" title="College Library">
			College e-Library
		</a>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		<a href="http://www.nationallibrary.gov.in/" class="eBookBox">
			<img src="http://bjbcollege.in/images/e-book1.png" alt="e-Books" title="e-Books">
			National Library
		</a>



	</div>
</div>
