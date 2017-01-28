using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;

namespace Micro.Objects.ICAS.ESTBLMT
{
    [Serializable]
    public class Establishment
    {
        public int EstbID
        {
            get;
            set;
        }
        public string EstbCode
        {
            get;
            set;
        }
        public string EstbTypeCode
        {
            get;

            set;

        }

        public string EstbTypeCodeDesc
        {
            get
            {
                string _typeCodeDesc = string.Empty;
                if (this.EstbTypeCode.Equals("N"))
                {
                    _typeCodeDesc = "NOTICE";
                }
                else if (this.EstbTypeCode.Equals("T"))
                {
                    _typeCodeDesc = "TENDER";
                }
                else if (this.EstbTypeCode.Equals("C"))
                {
                    _typeCodeDesc = "CIRCULAR";
                }
                else if (this.EstbTypeCode.Equals("R"))
                {
                    _typeCodeDesc = "RECENT NEWS";
                }
                return _typeCodeDesc;
            }
        }

        public string EstbTitle
        {
            get;
            set;

        }

        public int EstbTitletZoneMaxLengh
        {
            get
            {
                //return 25;
                return int.Parse(ConfigurationManager.AppSettings["EstbTitletZoneMaxLengh"].ToString());
            }
        }
        public string EstbTitleZone
        {
            get
            {
                if (EstbTitle.Length > EstbTitletZoneMaxLengh)
                {
                    return string.Concat(EstbTitle.ToString().Substring(0, EstbTitletZoneMaxLengh), "...");
                }
                else
                {
                    return EstbTitle;
                }
            }

        }

        public string EstbDescription
        {
            get;
            set;
        }
        public DateTime EstbDate
        {
            get;
            set;
        }
        public string EstbMessage
        {
            get;
            set;
        }
        public byte[] EstbUploadFile
        {
            set;
            get;
        }

        public string EstbUploadFileType
        {
            get;
            set;
        }
        public DateTime EstbViewStartDate
        {
            get;
            set;
        }

        public DateTime EstbViewEndDate
        {
            get;
            set;
        }
        public string EstbStatusFlag
        {
            get;
            set;
        }

        public string EstbStatusFlagDesc
        {
            get
            {
                string _desc = string.Empty;
                if (this.EstbStatusFlag.Equals("A"))
                {
                    _desc = "Approved";
                }
                else if (this.EstbStatusFlag.Equals("P"))
                {
                    _desc = "Pending";
                }
                return _desc;
            }
        }
        public bool IsActive
        {
            get;
            set;
        }
        public bool IsDeleted
        {
            get;
            set;
        }
        public int AddedBy
        {
            get;
            set;

        }

        public int ModifiedBy
        {
            get;
            set;
        }

        public string DateAdded
        {
            get;
            set;
        }

        public string DateModified
        {
            get;
            set;

        }
        public int OfficeID
        {
            get;
            set;

        }
        public int CompanyID
        {
            get;
            set;
        }
        public string FileNameWithPath
        {
            get;
            set;

        }
    }
}
