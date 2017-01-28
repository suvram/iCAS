<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_EstablishmentZone.ascx.cs" Inherits="UC_EstablishmentZone" %>
<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>
<%--<asp:UpdatePanel ID="updatePanel_Estb" runat="server">
	<ContentTemplate>--%>
		 
		<div id="EstblmntZone">
			<%--<div id="WebpartTitleEstb" />--%>
			<ul>
				<li class="UCTitleEstb">

					<%--<div class="btn-group" data-toggle="buttons">
						<label class="btn btn-primary active">
							<input type="radio" name="options" id="option1" autocomplete="off" checked>
							Radio 1 (preselected)
						</label>
						<label class="btn btn-primary">
							<input type="radio" name="options" id="option2" autocomplete="off">
							Radio 2
						</label>
						<label class="btn btn-primary">
							<input type="radio" name="options" id="option3" autocomplete="off">
							Radio 3
						</label>
					</div>--%>

					<asp:RadioButtonList runat="server" ID="radioList_Estb" AutoPostBack="true" RepeatDirection="Horizontal" OnSelectedIndexChanged="radioList_Estb_SelectedIndexChanged" CssClass="radioboxlist">
						<asp:ListItem Text="All" Value="A" Selected="True" />
						<asp:ListItem Text="Recent Activities&nbsp;&nbsp;" Value="R" />
						<asp:ListItem Text="Notices&nbsp;&nbsp;" Value="N" />
						<asp:ListItem Text="Tenders&nbsp;&nbsp;" Value="T" />
						<asp:ListItem Text="Ciculars&nbsp;&nbsp;" Value="C" />

					</asp:RadioButtonList>
				</li>
				<li>

					<asp:GridView ID="gridViewEstb" runat="server" AutoGenerateColumns="false" Width="100%" OnRowCommand="gridViewEstb_RowCommand">
						<Columns>
							<asp:TemplateField HeaderText="Date" ItemStyle-CssClass="ItemStyle_DT">
								<ItemTemplate>
									<asp:Literal ID="lit_Date" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "EstbDate", "{0:dd/MMM/yy}") %>'></asp:Literal>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Title" ItemStyle-CssClass="ItemStyle_Title">
								<ItemTemplate>
									<asp:Literal ID="lit_Title" runat="server" Text='<%# Eval("EstbTitleZone") %>'></asp:Literal>
									<asp:Literal ID="lit_EstbID" runat="server" Visible="False" Text='<%# Eval("EstbId") %>'></asp:Literal>
								</ItemTemplate>
							</asp:TemplateField>

							<asp:TemplateField ItemStyle-CssClass="ItemStyle_Icon">
								<ItemTemplate>

									<asp:Button ID="ViewButton" runat="server"
										CommandName="ViewEstablishment"
										CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
										Text="View" CssClass="btn btn-primary btn-sm" ToolTip='View This Information'></asp:Button>
								</ItemTemplate>
							</asp:TemplateField>



						</Columns>
						<HeaderStyle CssClass="gridViewEstbHeaderStyle" />
						<RowStyle CssClass="gridViewEstbRowStyle" />

					</asp:GridView>

				</li>
				<li></li>
			</ul>
		</div>
<%--
-		<IAControl:DialogBox ID="dialog_Message" runat="server" Title="ESTABLISHMENT:" BackgroundCssClass="modalBackground" Style="display: none" CssClass="modalPopupEstablishment" EnableViewState="true">
			<ItemTemplate>
				<ul>
					<li>
						<asp:Label ID="lbl_Type" runat="server" Text="" Font-Bold="true"></asp:Label>
						<br />
						<asp:Label ID="lbl_Date" runat="server" Text=""></asp:Label>
					</li>
					<li>
						<hr />
						<asp:Label ID="lbl_TheMessage" runat="server" Text=""></asp:Label>
						<br />
						<asp:Label ID="lbl_TheMessageBody" runat="server" Text=""></asp:Label>
					</li>
				</ul>
			</ItemTemplate>
		</IAControl:DialogBox>

		<asp:UpdateProgress runat="server" ID="PageUpdateProgress">
			<ProgressTemplate>
				<div id="UpdateProgress">
					<div class="UpdateProgressArea">
					</div>
				</div>
			</ProgressTemplate>
		</asp:UpdateProgress>
	</ContentTemplate>
</asp:UpdatePanel>--%>
