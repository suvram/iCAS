using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Configuration;

namespace LTPL.ICAS.WebApplication.iCAS
{
	public partial class ABOUT : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				lit_About.Text = GetHtmlTemplateCode();
			}
		}


		private string GetHtmlTemplateCode()
		{
			string htmlCode = string.Empty;
			try
			{
				using (WebClient client = new WebClient())
				{
					 
					string sFileName = Request.QueryString["Page"]; // get it from query string
						try
						{
							if (sFileName == string.Empty || sFileName == null)
							{
								//check if pageurl has come on request.
								sFileName = Page.RouteData.Values["thePage"].ToString();
							}
						}
						catch
						{
							sFileName = (Request.Url.ToString().Split('/')[Request.Url.ToString().Split('/').Length - 1]).ToString();
						}
						string sFileNameWithPath = string.Empty;
						sFileNameWithPath = string.Concat(Server.MapPath("~"), @"\App_Data\ICAS\html\", sFileName, @".htm");

						if (System.IO.File.Exists(sFileNameWithPath))
						{
							htmlCode = client.DownloadString(sFileNameWithPath);
						}
						else
						{
							sFileNameWithPath = string.Concat(Server.MapPath("~"), @"\App_Data\ICAS\html\", sFileName, @".html");

							if (System.IO.File.Exists(sFileNameWithPath)) // search if html file exists
							{
								htmlCode = client.DownloadString(sFileNameWithPath);
							}
							else if (System.IO.File.Exists(sFileNameWithPath + @"file-not-found.html")) // search if html file exists
							{
								htmlCode = client.DownloadString(sFileNameWithPath);
							}
							else
							{
								htmlCode = string.Format(@"<h1 class=""PageTitle"">Content updation in progress! ...</h1><p   class=""PageTitle"">Missing file : {0}</p>", sFileNameWithPath);
							}
						}
						client.Dispose();
				}

					}
					catch (Exception ex)
					{
						htmlCode = ex.Message.ToString();
					}
				 return htmlCode;
			}
 
 
	}
}