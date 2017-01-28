using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using Micro.Objects.ICAS.STAFFS;
using Micro.IntegrationLayer.ICAS.STAFFS;

namespace Micro.BusinessLayer.ICAS.STAFFS
{
    public partial class StaffMasterManagement
    {
        #region Code to make this as Singleton Class
        /// <summary>
        /// Declare a private static variable
        /// </summary>
        private static StaffMasterManagement _Instance;

        /// <summary>
        /// Return the instance of the application by initialising once only.
        /// </summary>
        public static StaffMasterManagement GetInstance
        {
            get
            {
                if (_Instance == null)
                {
                    _Instance = new StaffMasterManagement();
                }
                return _Instance;
            }
            set
            {
                _Instance = value;
            }
        }
        #endregion

        #region Declaration
        public string DefaultColumns = "EmployeeName, EmployeeCode, DesignationDescription, DepartmentDescription";
        public string DisplayMember = "EmployeeName";
        public string ValueMember = "EmployeeID";
        #endregion

        #region Transactional Mathods(Insert,Update,Delete)

        public int InsertEmployee(StaffMaster theStaffMaster, string CourseIDs, string Boards, string PassingYears, string Divisions, string PercentageMarks)
        {
            return StaffMasterIntegration.InsertEmployee(theStaffMaster, CourseIDs, Boards, PassingYears, Divisions, PercentageMarks);
        }

        public int UpdateEmployee(StaffMaster theStaffMaster, string CourseIDs, string Boards, string PassingYears, string Divisions, string PercentageMarks)
        {
            return StaffMasterIntegration.UpdateEmployee(theStaffMaster, CourseIDs, Boards, PassingYears, Divisions, PercentageMarks);
        }

        public int UpdateEmployeeContactInfo(StaffMaster theStaffMaster)
        {
            return StaffMasterIntegration.UpdateEmployeeContactInfo(theStaffMaster);
        }

        public int DeleteEmployee(StaffMaster theStaffMaster)
        {
            return StaffMasterIntegration.DeleteEmployee(theStaffMaster);
        }


        #endregion

        #region Data Retrive Mathods

        public List<StaffMaster> GetEmployeesListByOfficeID()
        {
            return StaffMasterIntegration.GetEmployeesListByOfficeID();
        }

        public List<StaffMaster> GetEmployeeList()
        {
            return StaffMasterIntegration.GetEmployeeList();

        }
        public List<StaffMaster> GetPolicyEmployeesAll()
        {
            return StaffMasterIntegration.GetPolicyEmployeesAll();

        }
        public DataTable GetEmployeesSearchAll(string searchText)
        {
            DataTable StffTable = StaffMasterIntegration.GetEmployeesSearchAll(searchText);
            return StffTable;
        }
        public List<StaffMaster> GetDuplicateEmployeeList(string employeeName, string fatherName, string dateofBirth, bool allOffices = false, bool showDeleted = false)
        {
            return StaffMasterIntegration.GetDuplicateEmployeeList(employeeName, fatherName, dateofBirth, allOffices, showDeleted);
        }
        public List<StaffMaster> GetOfficeEmployeeList()
        {
            return StaffMasterIntegration.GetOfficeEmployeeList();
        }

        public List<StaffMaster> GetEmployeeListByCompany(int CompanyID = -1)
        {
            return StaffMasterIntegration.GetEmployeeListByCompany(CompanyID);
        }

        public List<StaffMaster> GetEmployeesAllByCompany(int CompanyID = -1)
        {
            return StaffMasterIntegration.GetEmployeesAllByCompany(CompanyID);
        }

        public List<StaffMaster> GetEmployeeListByOfficeandDepartment(int DepartmentID)
        {
            return StaffMasterIntegration.GetCompanyEmployeeListByOfficeandDepartment(DepartmentID);

        }

        public List<StaffMaster> GetEmployeeListByOfficeandDepartment(int DepartmentID, int OfficeID)
        {
            return StaffMasterIntegration.GetCompanyEmployeeListByOfficeandDepartment(DepartmentID, OfficeID);

        }

        public StaffMaster GetEmployeeByID(int EmployeeID)
        {
            return StaffMasterIntegration.GetEmployeeDetailsByID(EmployeeID);
        }

        public StaffMaster GetEmployeeByEmployeeCode(string employeeCode)
        {
            return StaffMasterIntegration.GetEmployeeByEmployeeCode(employeeCode);
        }

        public List<StaffMaster> GetReportingEmployeesEmailAllByEmployee(int EmployeeID)
        {
            return StaffMasterIntegration.GetReportingEmployeesEmailAllByEmployee(EmployeeID);
        }

        public List<StaffMaster> GetReportingEmployeesAllByEmployee(int EmployeeID)
        {
            return StaffMasterIntegration.GetReportingEmployeesAllByEmployee(EmployeeID);
        }

        public List<StaffMaster> GetEmployeeDetailsByGuarantorLoan(string OfficeIDs, string DateFrom, string DateTo, string ApprovalStatus)
        {
            return StaffMasterIntegration.GetEmployeeDetailsByGuarantorLoan(OfficeIDs, DateFrom, DateTo, ApprovalStatus);
        }

        public List<StaffMaster> GetEmployeeDetailsByFieldFoce(string OfficeIDs, string DateFrom, string DateTo, string ApprovalStatus)
        {
            return StaffMasterIntegration.GetEmployeeDetailsByFieldForce(OfficeIDs, DateFrom, DateTo, ApprovalStatus);

        }

        public List<StaffMaster> GetEmployeesListbyofficeid(int OfficeID)
        {
            return StaffMasterIntegration.GetEmployeesListbyofficeid(OfficeID);
        }

        public List<StaffMaster> GetCompanyEmployeeList()
        {
            return StaffMasterIntegration.GetCompanyEmployeeList();
        }
        #endregion
        
    }
}
