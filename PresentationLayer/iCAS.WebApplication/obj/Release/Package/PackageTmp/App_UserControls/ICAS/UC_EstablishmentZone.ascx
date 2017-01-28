<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UC_EstablishmentZone.ascx.cs" Inherits="LTPL.ICAS.WebApplication.App_UserControls.ICAS.UC_EstablishmentZone" %>
<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>
<asp:UpdatePanel ID="updatePanel_Estb" runat="server">
	<ContentTemplate>
		<style type="text/css">
			.btn-green {
				background-color: #a1b95d;
				color: #000;
			}

			#ctrl_EstablishmentZone1_gridViewEstb {
				border-top: solid 2px #a1b95d;
			}

				#ctrl_EstablishmentZone1_gridViewEstb > tbody > tr > td {
					border: none;
					font-family: Lato, Arial;
				}

			.gridViewEstbRowStyle {
				border-bottom: dotted 1px #a1b95d;
				height: 15px;
			}

			displayGridNewsLi div table {
				border: solid 1px red;
			}

			.ItemStyle_DT {
				width: 10%;
				height: 18px;
				padding: 1px;
				text-align: center;
				background-color: #fff;
				font-size: 9pt;
			}

			.ItemStyle_Title {
				height: 18px;
				padding: 2px 0px 0px 5px;
				width: auto;
				background-color: #fff;
				/*text-transform: capitalize;*/
				font-size: 9pt;
			}

			.ItemStyle_Icon {
				width: 7%;
				height: 18px;
				padding: 1px;
				text-align: center;
				background-color: #fff;
			}

			.gridViewEstbHeaderStyle {
				display: none;
			}

			#displayFirstNewsLi {
				display: block;
			}

			#displayGridNewsLi {
				display: block;
			}
		</style>

		<script type="text/javascript">
			$(document).ready(function ()
			{
				$("#ctrl_EstablishmentZone1_LoadingDiv").css("display", "block");

				var apiUrl = '<%=ConfigurationManager.AppSettings["WebServerIP"].ToString() %>';
				apiUrl = "http://" + apiUrl + "/api/Establishment";
				//alert(apiUrl);
				//debugger
				$.ajax({
					type: "GET",
					url: apiUrl,
					data: "{}",
					contentType: "application/json; charset=utf-8",
					dataType: "json",
					success: function (result)
					{
						LoadFirstNews(result);
						$("#displayFirstNewsLi").css("display", "none");
					},
					error: function ()
					{
						alert("Error loading data! Please try again.");
					}
				});

				$("#ctrl_EstablishmentZone1_LoadingDiv").css("display", "none");
				function LoadFirstNews(result)
				{
					//alert('LoadFirstNews()' + result);
				}


			});
		</script>

		<div id="EstblmntZone">
			<ul>
				<li class="UCTitleEstb">
					<asp:RadioButtonList
						runat="server" ID="radioList_Estb"
						RepeatDirection="Horizontal"
						AutoPostBack="true"
						OnSelectedIndexChanged="radioList_Estb_SelectedIndexChanged"
						CssClass="radioboxlist">
						<asp:ListItem Text="Recent Activities" Value="R" />
						<asp:ListItem Text="Notices" Value="N" />
						<asp:ListItem Text="Tenders" Value="T" />
						<asp:ListItem Text="Ciculars" Value="C" />
						<asp:ListItem Text="All" Value="A" Selected="True" />
					</asp:RadioButtonList>
				</li>
				<li>
					<div id="LoadingDiv" runat="server">
						<h5>Loading the establishment details....</h5>
						<img src="http://<%=ConfigurationManager.AppSettings["WebServerIP"] %>/Images/lightbox-ico-loading.gif" />
					</div>
				</li>
				<li id="displayGridNewsLi">
					<%--<%#Eval("Name").ToString().Length>=25?Eval("Name").ToString().Substring(0,24):Eval("Name").ToString() %>--%>
					<asp:GridView ID="gridViewEstb" runat="server" AutoGenerateColumns="false" Width="100%" OnRowCommand="gridViewEstb_RowCommand">
						<Columns>
							<asp:TemplateField HeaderText="Date" ItemStyle-CssClass="ItemStyle_DT">
								<ItemTemplate>
									<asp:Literal ID="lit_Date" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "EstbDate", "{0:dd-MMM}") %>'></asp:Literal>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Title" ItemStyle-CssClass="ItemStyle_Title">
								<ItemTemplate>
									<asp:Literal ID="lit_Title" runat="server" Text='<%# Eval("EstbTitleZone").ToString().Length >= 60? (Eval("EstbTitleZone").ToString().Substring(0,59) + "...more") : (Eval("EstbTitleZone").ToString()) %>'></asp:Literal>
									<asp:Literal ID="lit_EstbID" runat="server" Visible="False" Text='<%# Eval("EstbId") %>'></asp:Literal>
								</ItemTemplate>
							</asp:TemplateField>

							<asp:TemplateField ItemStyle-CssClass="ItemStyle_Icon">
								<ItemTemplate>

									<asp:Button ID="ViewButton" runat="server"
										CommandName="ViewEstablishment"
										CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
										Text="View" CssClass="btn btn-success btn-xs" ToolTip='View This Information'></asp:Button>
								</ItemTemplate>
							</asp:TemplateField>



						</Columns>
						<HeaderStyle CssClass="gridViewEstbHeaderStyle" />
						<RowStyle CssClass="gridViewEstbRowStyle" />

					</asp:GridView>
				</li>
			</ul>
		</div>

		<IAControl:DialogBox ID="dialog_Message" runat="server" Title="ESTABLISHMENT:" BackgroundCssClass="modalBackground" Style="display: none" CssClass="modalPopupEstablishment" EnableViewState="true">
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
</asp:UpdatePanel>
