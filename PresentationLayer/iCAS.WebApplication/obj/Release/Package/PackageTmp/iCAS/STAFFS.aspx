<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/ICAS.Master" AutoEventWireup="true" CodeBehind="STAFFS.aspx.cs" Inherits="LTPL.ICAS.WebApplication.iCAS.STAFFS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .innercontent {
            padding: 0px;
        }

        #StaffProfiles {
            margin: 0px;
            
            width: 97%;
        }
    </style>
    <div class="innercontent">

        <ul id="StaffProfiles">
      
            <li class="PageTitle">

                <asp:RadioButtonList runat="server" ID="optCategory" AutoPostBack="true" OnSelectedIndexChanged="optCategory_OnSelectedIndexChanged" RepeatDirection="Horizontal" CellSpacing="8" CellPadding="1">
                    <asp:ListItem Text="&nbsp;All &nbsp;&nbsp;&nbsp;" Value="A" Selected="True" />
                    <asp:ListItem Text="&nbsp;Teaching&nbsp;&nbsp;&nbsp;" Value="T" Selected="False" />
                    <asp:ListItem Text="&nbsp;Non-Teaching&nbsp;&nbsp;&nbsp;" Value="N" Selected="False" />
                </asp:RadioButtonList>
            </li>
            <li class="FullWidthRow" style="font-size: 17px; font-weight: bold; margin: -2px 0px 0px 20px; text-align: center;">
                <asp:Literal runat="server" ID="lit_PageTitle" />
                Staffs
            </li>
            <li class="GridView">


                <asp:GridView runat="server" ID="gview_Employee" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="true" PageSize="10" Width="98%" CssClass="GridView" GridLines="Both" CellPadding="2" OnPageIndexChanging="gview_Employee_PageIndexChanging">
                    <HeaderStyle CssClass="HeaderStyle" />
                    <Columns>
                        <%-- <asp:TemplateField ItemStyle-CssClass="CheckBox">
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chk_EmployeeID" Visible="true" />
                            <asp:Label runat="server" ID="lbl_EmployeeID" Text='<%# Eval("EmployeeID") %>' Visible="false" />
                            <asp:Label runat="server" ID="lbl_ServiceDetailsID" Text='<%#Eval("EmployeeServiceDetailsID") %>' Visible="false" />
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                        <asp:BoundField DataField="DepartmentDescription" HeaderText="Department" ItemStyle-CssClass="Department" />
                        <asp:BoundField DataField="EmployeeCode" HeaderText="Code " ItemStyle-CssClass="EmployeeCode" />
                        <%--<asp:BoundField DataField="EmployeeName" HeaderText="Name " ItemStyle-CssClass="EmployeeName" />--%>
                        <asp:HyperLinkField
                            DataNavigateUrlFields="EmployeeID"
                            DataNavigateUrlFormatString="staffs.aspx?Page=View&ID={0}"
                            DataTextField="EmployeeName"
                            HeaderText="Staff Name" />

                        <asp:BoundField DataField="DesignationDescription" HeaderText="Designation " ItemStyle-CssClass="DesignationAndRole" />
                        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" ItemStyle-CssClass="OfficeName" />
                        <asp:BoundField DataField="JoiningDateInOffice" HeaderText="JoiningDate" ItemStyle-CssClass="OfficeName" />
                        <%-- <asp:BoundField DataField="LastQualification" HeaderText="Qualification" ItemStyle-CssClass="OfficeName" />--%>
                        <asp:BoundField DataField="Employeetype1" HeaderText="-" ItemStyle-CssClass="OfficeName" />
                        <asp:BoundField DataField="Employeetype2" HeaderText="-" ItemStyle-CssClass="OfficeName" />
                        <asp:BoundField DataField="Employeetype3" HeaderText="-" ItemStyle-CssClass="OfficeName" />
                        <asp:BoundField DataField="Employeetype4" HeaderText="-" ItemStyle-CssClass="OfficeName" />
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ItemStyle-CssClass="Department" Visible="false" />

                        <%-- <asp:CommandField ShowSelectButton="true" HeaderText="View" ButtonType="Image" SelectImageUrl="~/Themes/Default/Images/GRID_SELECT.ico" ItemStyle-CssClass="ViewLinkItem" ControlStyle-CssClass="ViewLink" />--%>
                    </Columns>
                    <PagerSettings Position="Bottom" FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
                    <PagerStyle CssClass="MicroPagerStyle" />
                </asp:GridView>
            </li>
        </ul>


        <h1 class="PageTitle">
            <asp:Literal runat="server" ID="lit_StaffDetails" />
        </h1>
        <ul id="StaffDetails">
            <li>
                <asp:Literal runat="server" ID="lit_StaffDetailsInfo" />
            </li>
        </ul>
    </div>
</asp:Content>
