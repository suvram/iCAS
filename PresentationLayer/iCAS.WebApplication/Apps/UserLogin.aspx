<%@ Page Title="" Language="C#" MasterPageFile="~/App_MasterPages/ICAS.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="TCon.iCAS.WebApplication.APPS.UserLogin" %>

<%@ Register Assembly="Micro.Commons" Namespace="Micro.Commons" TagPrefix="IAControl" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
		<ContentTemplate>
			<div id="LogoDiv">
			</div>
			<style type="text/css">
				#LoginDiv {
					padding-top: 40px;
					width: 400px;
					margin: 30px auto 20px auto;
					border: solid 1px #eee;
					text-align: center;
					-webkit-box-shadow: 3px 3px 5px 6px #ccc;
					box-shadow: 3px 3px 5px 6px #ccc;
				}
				/**/
				.BtnLoginClass {
					background-color: navy;
					color: white;
					font-weight: bold;
					padding: 10px;
					margin-left: 100px;
				}

				#ContentPlaceHolder1_txt_UserName,
				#ContentPlaceHolder1_txt_Password {
					height: 20px;
					color: navy;
					padding: 5px;
					width: 195px;
				}
			</style>
			<div id="LoginDiv">
				<ul id="Login">
					<%--User Name--%>
					<li class="FormLabel">
						<asp:Label runat="server" ID="lbl_UserName" Text="User Name (Student/Staff Code):" />
					</li>
					<li class="FormValue">
						<asp:TextBox runat="server" ID="txt_UserName" Text="TSDC00X0" AutoPostBack="false" Height="30" />
					</li>
					<li class="FormErrorRow">
						<asp:RequiredFieldValidator ID="requiredFieldValidator_UserName" runat="server" ErrorMessage="User Name can't be blank!" ControlToValidate="txt_UserName" CssClass="ValidateMessage"></asp:RequiredFieldValidator>
					</li>
					<%--User Password--%>
					<li class="FormLabel">
						<asp:Label runat="server" ID="lbl_Password" Text="Password:" />
					</li>
					<li class="FormValue">
						<asp:TextBox runat="server" ID="txt_Password" Text="" TextMode="Password" Height="31" />
					</li>
					<!-- Button Submit -->
					<li class="FormButtonLogin" style="margin-top: 5px;">
						<asp:Button runat="server" ID="btn_Login" Text=" LOG IN " OnClick="btn_Login_Click" CssClass="btn btn-primary" />
					</li>
					<%--Remember User Name--%>
					<li class="RememberRow">
						<asp:CheckBox runat="server" ID="chk_Remember" TextAlign="Right" Height="26px" Text="&nbsp;Remember My Login Credentials" />
					</li>
					<li class="ForgotPasswordRow">
						<asp:LinkButton runat="server" ID="lnkBtn_ForgotPassword" Text="Forgot your Password? Click here to get it on your email." OnClick="lnkBtn_ForgotPassword_Click" CausesValidation="false" />
					</li>
					<%--<li class="ForgotPasswordRow">
                        <asp:LinkButton runat="server" ID="lnkBtn_ChangePassword" Text="Forgot your Password? Click here to get it!" OnClick="lnkBtn_ForgotPassword_Click" CausesValidation="false" />
                    </li>--%>
					<li class="FormErrorRow">
						<asp:RequiredFieldValidator ID="requiredFieldValidator_Password" runat="server" ErrorMessage="*" ControlToValidate="txt_Password" CssClass="ValidateMessage"></asp:RequiredFieldValidator>
					</li>

					<li class="FormMessage">
						<asp:Literal runat="server" ID="lit_Message" Text="" />
					</li>
					<%--<micro:UC_SelectDatabase ID="ctrl_SelectDatabase" runat="server" />--%>
				</ul>
			</div>
			<div class="LoginFormLink">
				<%--<asp:HyperLink runat="server" ID="lnk_Home" Text="Home" NavigateUrl="~/Index.aspx" />
				::
				<asp:HyperLink runat="server" ID="HyperLink1" Text="About" NavigateUrl="~/Index.aspx?content=aboutus" />
				::UpdateProgressLogin
				<asp:HyperLink runat="server" ID="lnk_Contact" Text="Contact" NavigateUrl="~/ContactUs.aspx" />--%>
			</div>
			<div id="CompanySelection" style="display: none;">
				<asp:RadioButtonList runat="server" ID="radioBtnListCompany" RepeatDirection="Horizontal" RepeatLayout="Table">
					<asp:ListItem Text="TSDC" Value="TSDC" Selected="True" />
				</asp:RadioButtonList>
			</div>
			<IAControl:DialogBox ID="dialog_Message" runat="server" Title="Message:" BackgroundCssClass="modalBackground" Style="display: none" CssClass="modalPopup" EnableViewState="true">
				<ItemTemplate>
					<ul>
						<li>
							<asp:Literal ID="lit_TheDialogMessage" runat="server" Text="" />
						</li>
					</ul>
				</ItemTemplate>
			</IAControl:DialogBox>

			<asp:UpdateProgress runat="server" ID="PageUpdateProgress">
				<ProgressTemplate>
					<div id="UpdateProgress">

						<div class="UpdateProgressAreaLogin">
							<span class="UpdateProgressAreaTextLogin">Validating...</span>
						</div>

					</div>
				</ProgressTemplate>
			</asp:UpdateProgress>
		</ContentTemplate>
	</asp:UpdatePanel>

</asp:Content>
