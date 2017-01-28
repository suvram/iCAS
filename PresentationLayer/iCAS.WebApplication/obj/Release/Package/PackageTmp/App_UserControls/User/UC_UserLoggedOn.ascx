<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_UserLoggedOn.ascx.cs" Inherits="Micro.WebApplication.App_UserControls.UC_UserLoggedOn" %>

<script>
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);

    document.getElementById('txt_today').innerHTML = today;

    //document.getElementById('txt').innerHTML =
    //h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
<ul id="CurrentUser" >
    
    <li style="width:100%;">
        <div id="txt_today" style="font-size: 10px; text-align: center; width: 100%; margin-bottom: 20px;margin-left: -10px;"> </div>         
        WELCOME <h1 style="color:orangered;"><asp:Label runat="server" ID="lbl_UserNameValue" Text="UserName" /></h1>
    </li>
	 
	<li class="UserLabel">
		<asp:Label runat="server" ID="Label1" Text="User's Name:" />
	</li>
	<li class="UserValue">
		
		<asp:Label runat="server" ID="lbl_FullNameValue" Text="FirstName MI LastName" />
	</li>
	<li class="UserLabel">
		<asp:Label runat="server" ID="lbl_DesignationLabel" Text="Designation:" />
	</li>
	<li class="UserValue">
		
		<asp:Label runat="server" ID="lbl_DesignationValue" Text="Designation" />
        <asp:Label runat="server" ID="lbl_OfficeValue" Text="Branch Location, Dist"  Visible="false" />
	</li>
     
</ul>

