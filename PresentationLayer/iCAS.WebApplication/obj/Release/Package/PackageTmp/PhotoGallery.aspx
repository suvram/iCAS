<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/ICAS.Master" AutoEventWireup="true" CodeBehind="PhotoGallery.aspx.cs" Inherits="TCon.iCAS.WebApplication.PhotoGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" media="all" href="css/styles.css" />
    <link rel="stylesheet" type="text/css" media="all" href="css/jquery.lightbox-0.5.css" />
    <script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.lightbox-0.5.min.js"></script>


    <div id="w">
        <div id="content">


            <div id="thumbnails">
                <ul class="clearfix">
                    <%--

                     <li>
                        <a href="images/photo-gallery/DSC01817.jpg" title="INDEPENDENCE DAY CELEBRATION BY STAFFS AND STUDENTS">
                            <img src="Images/photo-gallery/thumbnails/DSC01817.jpg" alt="INDEPENDENCE DAY CELEBRATION BY STAFFS AND STUDENTS" />
                        </a>
                    </li>--%>
                    <li>
                        <a href="images/photo-gallery/sri_ganesh_ji.jpg" title="OUM SHREE SHREE GANESHAYA NAMAH">
                            <img src="images/photo-gallery/thumbnails/sri_ganesh_thumbnail.jpg" alt="SRI GANESH" />
                        </a>
                    </li>
                    <li>
                        <a href="images/photo-gallery/DSC01220.jpg" title="">
                            <img src="images/photo-gallery/thumbnails/DSC01220.jpg" alt="" />
                        </a>
                    </li>
                     <li>
                        <a href="images/photo-gallery/100_0014.jpg" title="STAFFS AND STUDENTS ATTENDING A SEMINAR">
                            <img src="images/photo-gallery/thumbnails/100_0014.jpg" alt="STAFFS AND STUDENTS ATTENDING A SEMINAR" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/100_0019.jpg" title="ANNUAL FUNCTION OF THE COLLEGE BY CULTURAL ASSOCIATION">
                            <img src="images/photo-gallery/thumbnails/100_0019.jpg" alt="ANNUAL FUNCTION OF THE COLLEGE BY CULTURAL ASSOCIATION" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/100_0020.jpg" title="">
                            <img src="images/photo-gallery/thumbnails/100_0020.jpg" alt="" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/100_0044.jpg" title="COLLEGE STAFFS">
                            <img src="images/photo-gallery/thumbnails/100_0044.jpg" alt="STAFFS OF THE COLLEGE" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/DSC01182.jpg" title="GROUP PHOTO WITH SRI PURNA CHANDRA TRIPATHY">
                            <img src="images/photo-gallery/thumbnails/DSC01182.jpg" alt="GROUP PHOTO WITH SRI PURNA CHANDRA TRIPATHY" />
                        </a>
                    </li>

                     <%--<li>
                        <a href="images/photo-gallery/DSC01212.jpg" title="ODIA SAHITYA SAMAJA">
                            <img src="images/photo-gallery/thumbnails/DSC01212.jpg" alt="ODIA SAHITYA SAMAJA" />
                        </a>
                    </li>

                     --%>

                     <li>
                        <a href="images/photo-gallery/DSC01231.jpg" title="STUDENTS AT THE CLASS ROOM">
                            <img src="images/photo-gallery/thumbnails/DSC01231.jpg" alt="STUDENTS AT THE CLASS ROOM" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/DSC01364.jpg" title="LECTURER DELIVERING SPEECH">
                            <img src="images/photo-gallery/thumbnails/DSC01364.jpg" alt="LECTURER DELIVERING SPEECH" />
                        </a>
                    </li>

                     <%--<li>
                        <a href="images/photo-gallery/DSC01368.jpg" title="ROAD SAFETY AWARNESS BY NSS AND YRC OF TSD COLLEGE">
                            <img src="images/photo-gallery/thumbnails/DSC0138.jpg" alt="ROAD SAFETY AWARNESS BY NSS AND YRC OF TSD COLLEGE" />
                        </a>
                    </li>--%>

                     <li>
                        <a href="images/photo-gallery/DSC01371.jpg" title="STUDENTS AND STAFFS GATHERING FOR SEMINAR ON HISTORY">
                            <img src="images/photo-gallery/thumbnails/DSC01371.jpg" alt="STUDENTS AND STAFFS GATHERING FOR SEMINAR ON HISTORY" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/DSC01374.jpg" title="YRC">
                            <img src="images/photo-gallery/thumbnails/DSC01374.jpg" alt="YOUTH RED CROSS OF THE COLLEGE" />
                        </a>
                    </li>

                     <li>
                        <a href="images/photo-gallery/DSC01377.jpg" title="YOUTH RED CROSS OF THE COLLEGE">
                            <img src="images/photo-gallery/thumbnails/DSC01377.jpg" alt="YOUTH RED CROSS OF THE COLLEGE AT CYCLE RALLY" />
                        </a>
                    </li>
                     <li>
                        <a href="images/photo-gallery/YRC-001.jpg" title="YOUTH RED CROSS OF TSD COLLEGE">
                            <img src="images/photo-gallery/thumbnails/DSC01373.jpg" alt="YOUTH RED CROSS OF TSD COLLEGE" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- @end #content -->
    </div>
    <!-- @end #w -->
    <script type="text/javascript">
        $(function () {
            $('#thumbnails a').lightBox();
        });
    </script>

</asp:Content>
