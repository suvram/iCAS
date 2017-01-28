using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Micro.WebApplication
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            //Declare Login Success Global Variable and set it to false
            HttpContext.Current.Session["IsLoginSuccess"] = "";

            //Response.Write("Hello");
		}
	}
}