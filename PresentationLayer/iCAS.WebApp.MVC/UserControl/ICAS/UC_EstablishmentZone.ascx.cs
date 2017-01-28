using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Micro.BusinessLayer.ICAS.ESTBLMT;
using Micro.Objects.ICAS.ESTBLMT;
using Micro.Commons;


public partial class UC_EstablishmentZone : System.Web.UI.UserControl
{

	#region Declaration
	protected static class PageVariables
	{

		public static Establishment TheEstablishment
		{
			get
			{
				Establishment TheEstablishment = HttpContext.Current.Session["theestablishment"] as Establishment;
				return TheEstablishment;
			}
			set
			{
				HttpContext.Current.Session.Add("TheEstablishment", value);
			}
		}

		public static List<Establishment> TheEstablishmentList
		{
			get
			{
				List<Establishment> TheEstablishmentList = HttpContext.Current.Session["TheEstablishmentList"] as List<Establishment>;
				return TheEstablishmentList;
			}
			set
			{
				HttpContext.Current.Session.Add("TheEstablishmentList", value);
			}
		}

	}
	#endregion

	protected void Page_Load(object sender, EventArgs e)
	{
		if (!IsPostBack)
		{
			PageVariables.TheEstablishmentList = EstablishmentManagement.GetInstance.GetEstablishmentList();
			BindGridview("A");
			//radioList_Estb.SelectedIndex = 0; // (int)(MicroEnums.EstablishmentType.RecentActivities);
		}
	}
	public void BindGridview(string estbTypeCode)
	{
		PageVariables.TheEstablishmentList = EstablishmentManagement.GetInstance.GetEstablishmentList(); //.Find(a=> a.EstbViewEndDate < DateTime.Today).ToList();

		List<Establishment> TheFilterList = new List<Establishment>();
		if (estbTypeCode.Equals("T"))
		{
			TheFilterList = (from xyz in PageVariables.TheEstablishmentList
							 where xyz.EstbTypeCode.Equals("T") && xyz.EstbStatusFlag.Equals("A")
							 select xyz).ToList();
		}
		if (estbTypeCode.Equals("C"))
		{
			TheFilterList = (from xyz in PageVariables.TheEstablishmentList
							 where xyz.EstbTypeCode.Equals("C") && xyz.EstbStatusFlag.Equals("A")
							 select xyz).ToList();
		}
		if (estbTypeCode.Equals("N"))
		{
			TheFilterList = (from xyz in PageVariables.TheEstablishmentList
							 where xyz.EstbTypeCode.Equals("N") && xyz.EstbStatusFlag.Equals("A")
							 select xyz).ToList();
		}
		if (estbTypeCode.Equals("A"))
		{
			TheFilterList = (from xyz in PageVariables.TheEstablishmentList
							 where xyz.EstbStatusFlag.Equals("A")
							 select xyz).ToList();
		}
		if (estbTypeCode.Equals("R"))
		{
			TheFilterList = (from xyz in PageVariables.TheEstablishmentList
							 where xyz.EstbTypeCode.Equals("R") && xyz.EstbStatusFlag.Equals("A")
							 select xyz).ToList();
		}

		TheFilterList = (from abc in TheFilterList
						 where abc.EstbViewStartDate <= DateTime.Today && abc.EstbViewEndDate >= DateTime.Today
						 select abc).ToList();

		gridViewEstb.DataSource = TheFilterList;
		gridViewEstb.DataBind();
	}

	private void FillGridEstb(string typeCode)
	{
		//List<Establishment> EstablishmentList;
		//if (typeCode.Equals("A"))
		//{
		//    EstablishmentList = EstablishmentManagement.GetInstance.GetEstablishmentList();
		//    gridViewEstb.Columns[2].Visible = true;
		//}
		//else
		//{
		//    EstablishmentList = EstablishmentManagement.GetInstance.GetEstablishmentListByTypeCode(typeCode);
		//    gridViewEstb.Columns[2].Visible = false;
		//}
		//gridViewEstb.DataSource = EstablishmentList;
		//gridViewEstb.DataBind();

	}
	protected void radioList_Estb_SelectedIndexChanged(object sender, EventArgs e)
	{
		//System.Threading.Thread.Sleep(18000);
		//multiView_Estb.ActiveViewIndex = radioList_Estb.SelectedIndex;
		string typeCode = radioList_Estb.SelectedValue;
		//FillGridEstb(typeCode);
		BindGridview(typeCode);
	}

	protected void gridViewEstb_RowCommand(object sender, GridViewCommandEventArgs e)
	{
		if (e.CommandName == "DownloadEstablishment")
		{
		}
		if (e.CommandName == "ViewEstablishment")
		{
			// Retrieve the row index stored in the 
			// CommandArgument property.
			int index = Convert.ToInt32(e.CommandArgument);

			// Retrieve the row that contains the button 
			// from the Rows collection.
			GridViewRow row = gridViewEstb.Rows[index];


			Literal ltrlID = (Literal)gridViewEstb.Rows[index].FindControl("lit_EstbID");
			//Literal ltrlslno = (Literal)gridViewEstb.Rows[index].FindControl("ltrlSlno");
			// Literal ltrlName = (Literal)gridViewEstb.Rows[index].FindControl("ltrlName");
			List<Establishment> TheFilterList = new List<Establishment>();
			var TheFilterList1 = (from xyz in PageVariables.TheEstablishmentList
								  where xyz.EstbID == int.Parse(ltrlID.Text.ToString())
								  select xyz).ToList();

			//Establishment estbl = estb as Establishment;
			string theTitle = string.Empty;
			string theDialogTitle = string.Empty;
			//////foreach (Establishment es in TheFilterList1)
			//////{
			//////	theTitle = es.EstbTitle;
			//////	lbl_Type.Text = es.EstbTypeCode;
			//////	lbl_Date.Text = string.Format("DATE : {0}", es.EstbViewStartDate.ToLongDateString());
			//////	lbl_TheMessage.Text = string.Format("<b>{0}</b>", es.EstbTitle);
			//////	lbl_TheMessageBody.Text = es.EstbDescription;

			//////	// if user has uploaded some files then display as link;
			//////	if (!(es.FileNameWithPath.Equals(DBNull.Value)))
			//////	{
			//////		if (!(es.FileNameWithPath.Equals("NA")) && !(es.FileNameWithPath.Equals(string.Empty)))
			//////		{
			//////			string theDownloadLink = string.Format("<span class='attachmentLink'><a href='/Documents/{0}' target='_blank'>VIEW / DOWNLOAD ATTACHED DOCUMENT</a></span>", es.FileNameWithPath);
			//////			lbl_TheMessageBody.Text = string.Format("{0} {1}", lbl_TheMessageBody.Text, theDownloadLink);
			//////		}
			//////	}
			//////}
			//////if (theTitle != string.Empty)
			//////{
			//////	if (lbl_Type.Text.Equals("N"))
			//////	{
			//////		theDialogTitle = "NOTICE:";
			//////	}
			//////	else if (lbl_Type.Text.Equals("C"))
			//////	{
			//////		theDialogTitle = "CIRCULAR:";
			//////	}
			//////	else if (lbl_Type.Text.Equals("T"))
			//////	{
			//////		theDialogTitle = "TENDER:";
			//////	}
			//////	lbl_Type.Text = theDialogTitle;
			//////	dialog_Message.Title = theDialogTitle;
			//////	dialog_Message.Show();
			//////}
			//ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('" + theTitle + "');", true);
		}
	}
}
