using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Micro.WebApplication.App_Error
{
	public partial class Error404 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				if (Request.QueryString["aspxerrorpath"] != null)
				{
					string filePath = Request.QueryString["aspxerrorpath"].ToString();
					lit_FilePath.Text = filePath;
				}
			}


		}
	}
}