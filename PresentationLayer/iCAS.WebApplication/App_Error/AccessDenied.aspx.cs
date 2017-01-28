using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Micro.WebApplication.App_Error
{
	public partial class AccessDenied : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string EmailSupport = (string)ConfigurationManager.AppSettings["EmailSupport"];
				lbl_SupportMessage.Text = "<br><br>For any problem, contact us and refer the incident number " + (string)Session["ExceptionID"] + " at <a href=\"mailto:" + EmailSupport + "?subject=Incident number " + (string)Session["ExceptionID"] + " &amp;body=Incident number " + (string)Session["ExceptionID"] + "\">" + EmailSupport + "</a>.";
			}
		}
	}
}