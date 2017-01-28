using Micro.Objects.Administration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Micro.Commons;
using Micro.BusinessLayer.Administration;
using System.Text;
using System.Configuration;

public partial class WebUserControlMenu : System.Web.UI.UserControl
{
	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			lit_MenuItems.Text = (Micro.Commons.Connection.LoggedOnUser == null ?
							GenerateCustomisedMenu((int)MicroEnums.UserRole.Everyone)
							:
							GenerateCustomisedMenu(Micro.Commons.Connection.LoggedOnUser.RoleID)
							);

		}
	}

	private string PopulateMenuItems()
	{
		string theRetval =
		@"<ul class='nav navbar-nav'>
                    <li class='active'>
                        <a href='#'>Link <span class='sr-only'>(current)</span></a></li>
                    <li><a href='#'>Link</a></li>
                    <li class='dropdown'>
                        <a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-expanded='false'>Dropdown <span class='caret'></span></a>
                        <ul class='dropdown-menu' role='menu'>
                            <li><a href='#'>Action</a></li>
                            <li><a href='#'>Another action</a></li>
                            <li><a href='#'>Something else here</a></li>
                            <li class='divider'></li>
                            <li><a href='#'>Separated link</a></li>
                            <li class='divider'></li>
                            <li><a href='#'>One more separated link</a></li>
                        </ul>
                    </li>
                </ul>";
		return theRetval;
		//throw new NotImplementedException();
	}

	//private string GenerateCustomisedMenu(int roleId)
	//{

	//	string ToolTipText;

	//	StringBuilder sbMenu = new StringBuilder();

	//	try
	//	{
	//		sbMenu.Append(string.Format("<ul class='nav navbar-nav'>"));

	//		List<WebMenu> CustomisedMenuList = WebMenuManagement.GetInstance.SelectAllMenuItemsByRoleId(roleId, (int)MicroEnums.UserCompany.TSDC);

	//		List<WebMenu> ParentMenuItems = (from m in CustomisedMenuList
	//										 where m.ParentWebMenuID == -1
	//										 orderby m.DisplayOrder
	//										 select m).ToList<WebMenu>();

	//		foreach (WebMenu objParentMenu in ParentMenuItems)
	//		{
	//			List<WebMenu> ChildMenuItems = (from mm in CustomisedMenuList
	//											where mm.ParentWebMenuID == objParentMenu.WebMenuID
	//											orderby mm.DisplayOrder
	//											select mm).ToList<WebMenu>();

	//			ToolTipText = objParentMenu.MenuToolTip;
	//			string ParentWebMenu = objParentMenu.MenuDisplayText;
	//			int ParentWebMenuID = objParentMenu.WebMenuID;
	//			string ParentWebMenuLink = Helpers.ResolveURL(objParentMenu.NavigationURL);
	//			string ParentWebImage = objParentMenu.ImageURL;

	//			if (ChildMenuItems.Count == 0)
	//			{
	//				sbMenu.Append("<li>");
	//			}
	//			else
	//			{
	//				sbMenu.Append("<li class='dropdown'>");
	//			}

	//			//if (!(ParentWebImage.ToString().Trim().Equals(string.Empty)))
	//			//{
	//			//    sbMenu.Append(string.Format("<img class='imgIcon' src='{0}' />", ParentWebImage));
	//			//}
	//			//string TheParentMenuDisplayText = String.Format("<a href='{0}' title='{1}'>{2}</a>", ParentWebMenuLink, ToolTipText, ParentWebMenu);

	//			//
	//			string TheParentMenuDisplayText = String.Format("<a href='{0}' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-expanded='false' title='{1}'>{2} <span class='caret'></span></a>", ParentWebMenuLink, ToolTipText, ParentWebMenu);

	//			sbMenu.Append(TheParentMenuDisplayText);



	//			if (ChildMenuItems.Count > 0)
	//			{
	//				sbMenu.Append("<ul class='dropdown-menu' role='menu'>");

	//				foreach (WebMenu objChildMenu in ChildMenuItems)
	//				{
	//					ToolTipText = objChildMenu.MenuToolTip;
	//					string ChildWebMenu = objChildMenu.MenuDisplayText;
	//					int ChildWebMenuID = objChildMenu.WebMenuID;
	//					string ChildWebMenuLink = Helpers.ResolveURL(objChildMenu.NavigationURL);
	//					string ChildWebImage = objChildMenu.ImageURL;
	//					sbMenu.Append("<li>");

	//					if (!(ChildWebImage.ToString().Trim().Equals(string.Empty)))
	//					{
	//						sbMenu.Append(string.Format("<img class='imgIcon' src='{0}'  />", ChildWebImage));
	//					}
	//					string TheChildMenuDisplayText = String.Format("<a href='{0}' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-expanded='false' title='{1}' >{2}</a>", ChildWebMenuLink, ToolTipText, ChildWebMenu);
	//					//sbMenu.Append(TheChildMenuDisplayText);

	//					List<WebMenu> ChildSubMenuItems = (from mmm in CustomisedMenuList
	//													   where mmm.ParentWebMenuID == objChildMenu.WebMenuID
	//													   orderby mmm.DisplayOrder
	//													   select mmm).ToList<WebMenu>();
	//					if (ChildSubMenuItems.Count > 0)
	//					{
	//						//sbMenu.Append(string.Format("<span>{0}</span>", TheChildMenuDisplayText));
	//						sbMenu.Append(string.Format("<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-expanded='false'>{0} <span class='caret'></span></a>", TheChildMenuDisplayText));


	//						sbMenu.Append("<ul class='dropdown-menu' role='menu'>");
	//						foreach (WebMenu objChildSubMenu in ChildSubMenuItems)
	//						{
	//							ToolTipText = objChildSubMenu.MenuToolTip;
	//							string ChildWebSubMenu = objChildSubMenu.MenuDisplayText;
	//							string ChildWebSubMenuURL = Helpers.ResolveURL(objChildSubMenu.NavigationURL);
	//							int ChildWebMenuSubID = objChildSubMenu.WebMenuID;
	//							sbMenu.Append("<li>");
	//							string TheChildSubMenuDisplayText = String.Format("<a href='{0}'  title='{1}'>{2}</a>", ChildWebSubMenuURL, ToolTipText, ChildWebSubMenu);
	//							sbMenu.Append(TheChildSubMenuDisplayText);
	//							sbMenu.Append("<li>");
	//						}
	//						sbMenu.Append("</ul>");
	//					}
	//					else
	//					{
	//						sbMenu.Append(string.Format("{0}", TheChildMenuDisplayText));
	//					}
	//					sbMenu.Append("</li>");

	//				}
	//				sbMenu.Append("</ul>");
	//			}
	//			sbMenu.Append("</li>");

	//		}



	//		sbMenu.Append("</ul>");
	//	}
	//	catch (Exception ex)
	//	{
	//		//Log.Error(ex, true);
	//		sbMenu = null;
	//	}            
	//	return sbMenu.ToString();
	//}


	private string GenerateCustomisedMenu(int roleId)
	{
		string ToolTipText;
		StringBuilder sbMenuHtml = new StringBuilder();
		try
		{
			sbMenuHtml.Append(string.Format("<ul class='nav navbar-nav'>"));
			List<WebMenu> CustomisedMenuList = WebMenuManagement.GetInstance.SelectAllMenuItemsByRoleId(roleId, (int)MicroEnums.UserCompany.TSDC);
			List<WebMenu> ParentMenuItems = (from m in CustomisedMenuList where m.ParentWebMenuID == -1 orderby m.DisplayOrder select m).ToList<WebMenu>();
			foreach (WebMenu objParentMenu in ParentMenuItems)
			{
				ToolTipText = objParentMenu.MenuToolTip;
				string ParentWebMenu = objParentMenu.MenuDisplayText;
				int ParentWebMenuID = objParentMenu.WebMenuID;
				string ParentWebMenuLink = Helpers.ResolveURL(objParentMenu.NavigationURL);
				string ParentWebImage = objParentMenu.ImageURL;
				string TheParentMenuDisplayText = string.Empty;
				//string TheIconForMenu = GetIconForMenu(objParentMenu);

				List<WebMenu> ChildMenuItems = (from mm in CustomisedMenuList where mm.ParentWebMenuID == objParentMenu.WebMenuID orderby mm.DisplayOrder select mm).ToList<WebMenu>();

				if (ChildMenuItems.Count == 0)
				{
					sbMenuHtml.Append("<li>");
					TheParentMenuDisplayText = String.Format("<a href='{0}' title='{1}'>{3}{2}</a>", ParentWebMenuLink, ToolTipText, ParentWebMenu, objParentMenu.ImageURL);
				}
				else
				{
					sbMenuHtml.Append("<li class='dropdown'>");
					TheParentMenuDisplayText = String.Format("<a href='{0}' class='dropdown-toggle' data-toggle='dropdown' title='{1}'>{3}{2} <b class='caret'></b></a>", ParentWebMenuLink, ToolTipText, ParentWebMenu, objParentMenu.ImageURL);
				}
				sbMenuHtml.Append(TheParentMenuDisplayText); // adding the sub menu

				if (ChildMenuItems.Count > 0)
				{
					sbMenuHtml.Append("<ul class='dropdown-menu multi-level'>");
					foreach (WebMenu objChildMenu in ChildMenuItems)
					{
						ToolTipText = objChildMenu.MenuToolTip;
						string ChildWebMenu = objChildMenu.MenuDisplayText;
						int ChildWebMenuID = objChildMenu.WebMenuID;
						string ChildWebMenuLink = Helpers.ResolveURL(objChildMenu.NavigationURL);
						string ChildWebImage = objChildMenu.ImageURL;
						string TheChildMenuDisplayText = string.Empty;

						List<WebMenu> ChildSubMenuItems = (from mmm in CustomisedMenuList where mmm.ParentWebMenuID == objChildMenu.WebMenuID orderby mmm.DisplayOrder select mmm).ToList<WebMenu>();
						if (ChildSubMenuItems.Count == 0)
						{
							sbMenuHtml.Append("<li>");
							TheChildMenuDisplayText = String.Format("<a href='{0}' title='{1}' >{3}{2}</a>", ChildWebMenuLink, ToolTipText, ChildWebMenu, objChildMenu.ImageURL);
						}
						else
						{
							sbMenuHtml.Append("<li class='dropdown-submenu'>");
							TheChildMenuDisplayText = String.Format("<a href='{0}' class='dropdown-toggle' data-toggle='dropdown' title='{1}' >{3}{2}</a>", ChildWebMenuLink, ToolTipText, ChildWebMenu, objChildMenu.ImageURL);
						}

						if (ChildSubMenuItems.Count > 0)
						{
							sbMenuHtml.Append(TheChildMenuDisplayText); // adding the sub sub menu link
							sbMenuHtml.Append("<ul class='dropdown-menu'>");
							foreach (WebMenu objChildSubMenu in ChildSubMenuItems)
							{
								ToolTipText = objChildSubMenu.MenuToolTip;
								string ChildWebSubMenu = objChildSubMenu.MenuDisplayText;
								string ChildWebSubMenuURL = Helpers.ResolveURL(objChildSubMenu.NavigationURL);
								int ChildWebMenuSubID = objChildSubMenu.WebMenuID;
								sbMenuHtml.Append("<li>");
								string TheChildSubMenuDisplayText = String.Format("<a href='{0}'  title='{1}'>{2}</a>", ChildWebSubMenuURL, ToolTipText, ChildWebSubMenu);
								sbMenuHtml.Append(TheChildSubMenuDisplayText);
								sbMenuHtml.Append("<li>");
							}
							sbMenuHtml.Append("</ul>");
						}
						else
						{
							sbMenuHtml.Append(string.Format("{0}", TheChildMenuDisplayText));
						}
						sbMenuHtml.Append("</li>");

					}
					sbMenuHtml.Append("</ul>");
				}
				sbMenuHtml.Append("</li>");

			}

			// LOGIN LOGOUT & REGISTER
			//<a href="#">Login</a></li>
			string LoginLogoutUrl = "";
			if (Micro.Commons.Connection.LoggedOnUser == null)
			{
				LoginLogoutUrl = String.Format(@"<li><a href='http://{0}/APPS/UserLogin.aspx'><i class='fa fa-sign-in'></i>&nbsp;Log In</a>", ConfigurationManager.AppSettings["WebServerIP"]);
			}
			else
			{
				LoginLogoutUrl = String.Format(@"<li><a href='http://{0}/APPS/Logout.aspx'><i class='fa fa-sign-out'></i>&nbsp;Log Out</a>", ConfigurationManager.AppSettings["WebServerIP"]);
			}

			//sbMenuHtml.Append(string.Format("<li class='topmenu'>{0}</li>", LoginLogoutUrl));
			lit_LoginLogout.Text = LoginLogoutUrl;
			
			//Register
			lit_Register.Text = string.Format(@"<li><a href='http://{0}/Students.aspx'><i class='fa fa-pencil-square-o' aria-hidden='true'></i>&nbsp;Register&nbsp;&nbsp;</a></li>",ConfigurationManager.AppSettings["WebServerIP"]);


			sbMenuHtml.Append("</ul>");
		}
		catch (Exception ex)
		{
			Log.Error(ex, true);
			sbMenuHtml = null;
		}
		return sbMenuHtml.ToString();
	}

	//private string GetIconForMenu(WebMenu objParentMenu)
	//{
	//	string theRetVal="";
	//	if (objParentMenu.ImageURL.ToString() != "" && objParentMenu.ImageURL != null)
	//	{
	//		theRetVal = 
	//	}
	//	//throw new NotImplementedException();
	//}

}
