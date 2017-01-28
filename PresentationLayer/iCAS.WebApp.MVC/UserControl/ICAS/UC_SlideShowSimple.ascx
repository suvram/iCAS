﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_SlideShowSimple.ascx.cs" Inherits="UC_SlideShowSimple" %>
<style type="text/css">
	#slideshow {
		position: relative;
		width: 101%;
		height: 350px;
		overflow: hidden;
		background-color: navy;
		color: white;
	}
</style>

<div id="slideshow">
	<div>
		<a href="/photogallery.aspx" title="WEL-COME TO THE WEBSITE OF TSD COLLEGE, B.D.PUR (SASAN), GANJAM, ODISHA" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_0001.jpg" alt data-caption="WEL-COME TO THE WEBSITE OF TSD COLLEGE, B.D.PUR (SASAN), GANJAM, ODISHA" />
		</a>
		<div class="caption">
			<p>WELCOME TO THE WEBSITE OF THE TSD COLLEGE</p>
		</div>
	</div>
	<div>
		<a href="/photogallery.aspx" title="ADMINISTRATIVE BUILDING & STAFFS" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_0002.jpg" alt data-caption="ADMINISTRATIVE BUILDING & STAFFS OF TSD COLLEGE" />
		</a>
		<div class="caption">
			<p>ADMINISTRATIVE BUILDING AND SOME OF THE STAFFS OF THE COLLEGE</p>
		</div>
	</div>
	<div>
		<a href="/photogallery.aspx" title=" STAFF COLLAGE OF THE TSD COLLEGE" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/tsdc-slide-001.jpg" alt data-caption=" STAFF COLLAGE OF THE TSD COLLEGE" />
		</a>
		<div class="caption">
			<p>STAFF COLLAGE OF THE TSD COLLEGE</p>
		</div>
	</div>

	<div>
		<a href="/photogallery.aspx" title="NCC WING OF THE COLLEGE" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_07.jpg" alt data-caption="NCC WING OF THE COLLEGE" />
		</a>
		<div class="caption">
			<p>NCC WING OF THE TSD COLLEGE</p>
		</div>
	</div>
	<div>
		<a href="/photogallery.aspx" title=" ODIA SAHITYA SAMAJA CELEBRATION BY STUDENTS & STAFFS" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_04.jpg" alt data-caption=" ODIA SAHITYA SAMAJA CELEBRATION BY STUDENTS & STAFFS" />
		</a>
		<div class="caption">
			<p>ODIA SAHITYA SAMAJA CELEBRATION BY STUDENTS & STAFFS</p>
		</div>
	</div>



	<div>
		<a href="/photogallery.aspx" title="NEW ADMINISTRATIVE BUILDING OF TSD COLLEGE" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_00.jpg" alt data-caption="NEW ADMINISTRATIVE BUILDING OF TSD COLLEGE" />
		</a>
		<div class="caption">
			<p>NEW ADMINISTRATIVE BUILDING OF TSD COLLEGE</p>
		</div>
	</div>









	<div>
		<a href="#" title="COLLEGE LIBARY: LET YOU HELP TO IMPROVE YOUR READING HABIT" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_03.jpg" alt data-caption="COLLEGE LIBARY: LET YOU HELP TO IMPROVE YOUR READING HABIT" />
		</a>
		<div class="caption">
			<p>COLLEGE LIBARY: LET YOU HELP TO IMPROVE YOUR READING HABIT</p>
		</div>
	</div>
	<div>
		<a href="#" title="YOUTH RED CROSS - STUDENTS & STAFF FOR THE ACTIVITY" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_01.jpg" alt data-caption="... & YOUTH RED CROSS - STUDENTS & STAFF FOR THE ACTIVITY" />
		</a>
		<div class="caption">
			<p>YOUTH RED CROSS - STUDENTS & STAFF FOR THE ACTIVITY</p>
		</div>
	</div>


	<div>
		<a href="#" title="RED RIBOON CLUB OF THE COLLEGE & SEMINARS BEING DONE IN COLLEGE BY HISTORY DEPT." target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_05.jpg" alt data-caption="RED RIBOON CLUB OF THE COLLEGE & SEMINARS BEING DONE IN COLLEGE BY HISTORY DEPT." />
		</a>
		<div class="caption">
			<p>RED RIBOON CLUB OF THE COLLEGE & SEMINARS BEING DONE IN COLLEGE BY HISTORY DEPT.</p>
		</div>
	</div>


	<div>
		<a href="#" title="NEW BULDING CREATED IN RECENT PAST.. FOR IT EDUCATION TO STUDENTS" target="_blank">
			<img src="http://tsdcollege.in/Images/slides_tsdc/slide_07.jpg" alt data-caption="NEW BULDING CREATED IN RECENT PAST.. FOR IT EDUCATION TO STUDENTS" />
		</a>
		<div class="caption">
			<p>NEW BULDING CREATED IN RECENT PAST.. FOR IT EDUCATION TO STUDENTS</p>
		</div>
	</div>
</div>


<script type="text/javascript">
	$(function () {
		$("#slideshow > div:gt(0)").hide();

		setInterval(function () {
			$('#slideshow > div:first')
			.fadeOut(4000)
			.next()
			.fadeIn(4000)
			.end()
			.appendTo('#slideshow');
		}, 5000);

	});
</script>