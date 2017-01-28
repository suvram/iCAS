using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Micro.BusinessLayer.ICAS.STAFFS;
using Micro.Objects.ICAS.STAFFS;

namespace LTPL.ICAS.WebApplication.iCAS
{
    public partial class STAFFS : System.Web.UI.Page
    {
        public static PropertyInfo[] GetProperties(object obj)
        {
            return obj.GetType().GetProperties();
        }
        public static class PageVar
        {
            public static List<StaffMaster> StaffMasterList
            {
                get
                {
                    List<StaffMaster> TheStaffMasterList = HttpContext.Current.Session["StaffMasterList"] as List<StaffMaster>;
                    return TheStaffMasterList;
                }
                set
                {
                    HttpContext.Current.Session.Add("StaffMasterList", value);
                }
            }
        }


        private void BindDetailViewStaff(int staffId)
        {
            if (PageVar.StaffMasterList == null)
            {
                PageVar.StaffMasterList = StaffMasterManagement.GetInstance.GetOfficeEmployeeList();                
            }
            StaffMaster theStaff = new StaffMaster();
            theStaff = PageVar.StaffMasterList.Find(a => a.EmployeeID == staffId);

            lit_StaffDetails.Text = "";
            if (theStaff == null)
            {
                lit_StaffDetails.Text = string.Format("NO INFORMATION AVAILABLE FOR THE STAFF WHOS ID IS : <span class='Name'>{0} </span>", staffId);
                return;
            }
            else
            {
                
                //optCategory.SelectedIndex = -1;
                lit_StaffDetails.Text = string.Format("DETAIL INFORMATION OF THE STAFF : <span class='Name'>{0} {1}</span>", theStaff.Salutation, theStaff.UserName);
            }

            PropertyInfo[] propertiesStudent = theStaff.GetType().GetProperties();

            StringBuilder sbStudentDetails = new StringBuilder("<ul id='StaffDetailsView' class='StaffDetails'>");
            //Display Student Details
            int ctr = 0;
            foreach (PropertyInfo pi in propertiesStudent)
            {
                ctr++;
                string theVar = string.Concat(pi.GetValue(theStaff, null), "&nbsp;");
                sbStudentDetails.Append(string.Format("<li class='theName'>{2}. {0}</li><li class='theValue'>{1}</li>", pi.Name, theVar, ctr));
            }
            sbStudentDetails.Append("</ul>");
            //studentDeails.InnerText = sbStudentDetails.ToString();
            lit_StaffDetailsInfo.Text = sbStudentDetails.ToString();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                int staffId = int.Parse(Request.QueryString["ID"].ToString());
                BindDetailViewStaff(staffId);
                //Student_Multi.SetActiveView(View_detail_Student);
                return;
            }
			 
            if (!IsPostBack)
            {
                PageVar.StaffMasterList = StaffMasterManagement.GetInstance.GetOfficeEmployeeList();
                if (Request.QueryString["Category"] == null || Request.QueryString["Category"].ToString() == "A")
                {
                    //BindGridView("A");
                    optCategory.SelectedIndex = 0;
                    optCategory_OnSelectedIndexChanged(null, null);
                }
                else if (Request.QueryString["Category"].ToString() == "T")
                {
                    //BindGridView("T");
                    optCategory.SelectedIndex = 1;
                    optCategory_OnSelectedIndexChanged(null, null);
                }
                else if (Request.QueryString["Category"].ToString() == "N")
                {
                    //BindGridView("N");
                    optCategory.SelectedIndex = 2;
                    optCategory_OnSelectedIndexChanged(null, null);
                }
				 
                
                AddRowSpanToGridView();
                //optCategory.SelectedIndex = 0;
            }
        }


        protected void optCategory_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            if (optCategory.SelectedIndex != -1)
            {
                string category = optCategory.SelectedValue.ToString();
                lit_PageTitle.Text = optCategory.SelectedItem.Text.Trim();
                BindGridView(category);
                AddRowSpanToGridView();
            }
        }

        //public void BindGridView()
        //{
        //    //List<StaffMaster> StaffMasterList = StaffMasterManagement.GetInstance.GetOfficeEmployeeList();
        //    PageVar.StaffMasterList = StaffMasterManagement.GetInstance.GetOfficeEmployeeList();
        //    gview_Employee.DataSource = PageVar.StaffMasterList;
        //    gview_Employee.DataBind();
        //}

        public void BindGridView(string empCategory)
        {
            List<StaffMaster> StaffMasterListNew;
            if (empCategory.Equals("A"))
            {
                StaffMasterListNew = (
                               from abc in PageVar.StaffMasterList
                               select abc
               ).OrderBy(x => x.DepartmentDescription).ThenBy(y => y.EmployeeID).ToList();
            }
            else
            {
                StaffMasterListNew = (
                               from abc in PageVar.StaffMasterList
                               where abc.TeachingOrNonTeaching.Equals(empCategory)
                               select abc
               ).OrderByDescending(x => x.DepartmentDescription).ThenBy(y => y.EmployeeID).ToList();
            }


            gview_Employee.DataSource = StaffMasterListNew;
            gview_Employee.DataBind();
        }

        public void AddRowSpanToGridView()
        {
            for (int rowIndex = gview_Employee.Rows.Count - 2; rowIndex >= 0; rowIndex--)
            {
                GridViewRow currentRow = gview_Employee.Rows[rowIndex];
                GridViewRow previousRow = gview_Employee.Rows[rowIndex + 1];

                //for (int i = 0; i < currentRow.Cells.Count; i++)
                for (int i = 0; i < 1; i++)
                {
                    if (currentRow.Cells[i].Text == previousRow.Cells[i].Text)
                    {
                        if (previousRow.Cells[i].RowSpan < 2)
                        {
                            currentRow.Cells[i].RowSpan = 2;
                        }
                        else
                            currentRow.Cells[i].RowSpan = previousRow.Cells[i].RowSpan + 1;
                        previousRow.Cells[i].Visible = false;
                    }
                }
            }
        }


        protected void gview_Employee_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                gview_Employee.PageIndex = e.NewPageIndex;


                string category = optCategory.SelectedValue.ToString();
                lit_PageTitle.Text = optCategory.SelectedItem.Text.Trim();
                BindGridView(category);
                AddRowSpanToGridView();


                //lit_PageCounter.Text = string.Format("Page <b>{0}</b> of {1}", e.NewPageIndex + 1, gview_Employee.PageCount);

            }
            catch
            {
            }
        }
    }
}