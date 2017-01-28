<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="ManageDevicePermissions.aspx.cs" Inherits="Micro.WebApplication.MicroERP.HRMS.ManageDevicePermissions" %>
<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>
<%@ Register Src="../../App_UserControls/UC_Search.ascx" TagName="UC_Search" TagPrefix="micro" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
<h1 class="PageTitle">
		<asp:Literal runat="server" ID="lit_PageTitle" Text="Leave Application Form:-" />
	</h1>
	<asp:UpdatePanel runat="server" ID="updatePanel_LeaveApplication">
		<ContentTemplate>
         <ul id="BioReader">
			        <div id="Mode">
						<asp:Label runat="server" ID="lbl_DataOperationMode" />
					</div>
                       
                    <li class="FullWidth">
							<ul>
                                <li class="PageSubTitle">
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True"  Text="Bio Metric Data Reader:-" />
                                </li>
                                <li class="FormLabel">
                                    <asp:Label ID="lbl_Device_Status" runat="server" Text="Device Status:"></asp:Label>
                                </li>
                                <li class="FormValue">
                                    <asp:TextBox ID="txt_DeviceStatus" runat="server" CssClass="CountTextBox" Enabled="False" Width="60"></asp:TextBox>
                                     <asp:DropDownList ID="ddl_Year" runat="server" CssClass="YearList" />
                                </li>
                                </ul>

                    
                     <ul>
                                
                                <li class="FormLabelGridview">
                                    <asp:GridView ID="gridview_ImportList" runat="server" AllowPaging="True"  AutoGenerateColumns="False" BorderStyle="None" CellPadding="4" GridLines="None" Height="45px" OnPageIndexChanging="gridview_ImportList_PageIndexChanging" PageSize="7" Width="100%">
                                        <Columns>
                                            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID"><HeaderStyle HorizontalAlign="Center" /> </asp:BoundField>
                                            <asp:BoundField DataField="Date" DataFormatString="{0:dd/MM/yyyy}"  HeaderText="Date"> <HeaderStyle HorizontalAlign="Center" /></asp:BoundField>
                                            <asp:BoundField DataField="Time" DataFormatString="{0:h:mm tt}"  HeaderText="Time" />
                                        </Columns>
                                    </asp:GridView>
                                </li>
                    
                    
                    
                    </li>
         </ul>
           <li class="FormButton_Top">
                                    <li class="FormButton_Top">
                                        <asp:Button ID="btn_Connect" runat="server" OnClick="btn_Connect_Click" Text="Connect" />
                                         <asp:Button ID="btn_Import" runat="server" OnClick="btn_Import_Click" Text="Connect" />

                                    </li>
                                    <li class="AppMessages">
                                        <asp:Literal ID="lblStatus" runat="server" Text="." />
                                    </li>
        </ContentTemplate>
     </asp:UpdatePanel>

</asp:Content>
