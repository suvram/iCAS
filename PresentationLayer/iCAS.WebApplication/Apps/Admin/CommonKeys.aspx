<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/MicroERP-MasterPage.Master" AutoEventWireup="true" CodeBehind="CommonKeys.aspx.cs" Inherits="Micro.WebApplication.MicroERP.ADMIN.CommonKeys" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderMicroERP" runat="server">
	<asp:UpdatePanel runat="server" ID="updatePanelUserCommonKeys">
		<ContentTemplate>
			<h1 class="PageTitle">
				<asp:Literal runat="server" ID="lit_PageTitle" Text="Manage Your CommonKeys :-" />
			</h1>
			<h1 class="PageSubTitle">
				<asp:Literal runat="server" ID="Literal1"/>
			</h1>
			<li class="FormButton_Top">
							<div id="Top">
								<asp:Button runat="server" ID="btn_AddNew" Text=" Save " OnClick="btn_AddNew_Clicked" />
								<asp:Button runat="server" ID="btn_Reset" Text="Reset" onclick="btn_Reset_Click" CausesValidation="false" />
							</div>
						</li>

			<ul class="GridView" style="display: table;">
				<li>
					<ul id="CommonKeys">
						<li id="Label">
							<asp:Literal runat="server" ID="lit_AddNew" Text="Add New Common Key of Type:" />
						</li>
						<li id="KeyType">
							<asp:DropDownList runat="server" ID="ddl_CommonKeyName" AutoPostBack="True" onselectedindexchanged="ddl_CommonKeyName_SelectedIndexChanged" />
						</li>
						<li id="KeyValue">
							<asp:TextBox runat="server" ID="txt_AddNew" />
							<asp:RequiredFieldValidator runat="server" ID="requiredFieldValidator_AddNew" ControlToValidate="txt_AddNew" Text="*" SetFocusOnError="true" ForeColor="Red"/>
						</li>
					</ul>
				</li>
				<li>
					<asp:GridView ID="gview_CommonKeys" runat="server" AutoGenerateColumns="False" PageSize="5" AllowPaging="true" onpageindexchanging="gview_CommonKeys_PageIndexChanging" onrowcommand="gview_CommonKeys_RowCommand" onrowdatabound="gview_CommonKeys_RowDataBound" onrowdeleting="gview_CommonKeys_RowDeleting" onrowediting="gview_CommonKeys_RowEditing">
						<HeaderStyle CssClass="HeaderStyle" />
						<EditRowStyle CssClass="EditRowStyle" />
						<Columns>
							<asp:BoundField ShowHeader="false" DataField="FieldForceID" Visible="false" />
							<asp:TemplateField Visible="true" ItemStyle-CssClass="FFCheck">
								<ItemTemplate>
									<asp:Label runat="server" ID="lbl_CommonKeyID" Text='<%# Eval("CommonKeyID") %>' Visible="false" />
								</ItemTemplate>
							</asp:TemplateField>
							<asp:BoundField DataField="CommonKeyValue" HeaderText="Key Value " ItemStyle-CssClass="Value" />
							<asp:CommandField ShowEditButton="True" HeaderText="Edit" ButtonType="Image" EditImageUrl="~/Themes/Default/Images/GRID_EDIT.ico" ControlStyle-CssClass="EditLink" ItemStyle-CssClass="EditLinkItem" />
							<asp:CommandField ShowDeleteButton="True" HeaderText="Del." ButtonType="Image" DeleteImageUrl="~/Themes/Default/Images/GRID_DELETE.ico" ControlStyle-CssClass="DeleteLink" ItemStyle-CssClass="DeleteLinkItem" />
						</Columns>
						<PagerSettings Position="TopAndBottom" FirstPageText="First" LastPageText="Last" Mode="NumericFirstLast" />
						<PagerStyle CssClass="MicroPagerStyle" />
					</asp:GridView>
					<IAControl:DialogBox ID="dialog_Message" runat="server" Title="Message:" BackgroundCssClass="modalBackground" Style="display: none" CssClass="modalPopup" EnableViewState="true">
						<ItemTemplate>
							<ul id="CustomerDialog">
								<li>
									<asp:Label ID="lbl_TheMessage" runat="server" Text=""></asp:Label>
								</li>
							</ul>
						</ItemTemplate>
					</IAControl:DialogBox>
				</li>
			</ul>
		</ContentTemplate>
	</asp:UpdatePanel>
</asp:Content>
