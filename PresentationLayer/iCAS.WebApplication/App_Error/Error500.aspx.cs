using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;

namespace Micro.WebApplication.App_Error
{
	public partial class Error500 : System.Web.UI.Page
	{
		public string RedirectPage
		{
			get
			{
				string PageReturn = string.Empty;
				if (Request["errorpath"] != null)
				{
					PageReturn = Request["errorpath"].ToString();
				}
				return PageReturn;
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
			this.Title = "Error 500";

			if (!Page.IsPostBack)
			{
				Exception ex = (Exception)Session["LastError"];
				try
				{
					LabelError.Text = (string)ex.Message;
					LabelTime.Text = DateTime.Now.ToShortDateString();
                    LabelTarget.Text = ((string)ex.StackTrace).ToString().Replace("Micro", ConfigurationManager.AppSettings["DefaultCompanyAlias"].ToString());
					LabelErrorPage.Text = RedirectPage;
                    lbl_Reason.Text = String.Format("Some error occured while executing the code at {0}", ex.Message.Replace("Micro", ConfigurationManager.AppSettings["DefaultCompanyAlias"].ToString()));
					string EmailSupport = (string)ConfigurationManager.AppSettings["EmailSupport"];
					lbl_ErrorMessage.Text = String.Format("<br><br>{0} For any problem, contact us and refer the incident number {1} at <a href=\"mailto:{2}?subject=Incident number {1} &amp;body=Incident number {1}\">{2}</a>.", "->", (string)Session["ExceptionID"], EmailSupport);

				}
				catch (Exception exp)
				{
					LabelError.Text = exp.Message;
					LabelTarget.Text = (string)exp.StackTrace;
				}
			}
		}
	}
}