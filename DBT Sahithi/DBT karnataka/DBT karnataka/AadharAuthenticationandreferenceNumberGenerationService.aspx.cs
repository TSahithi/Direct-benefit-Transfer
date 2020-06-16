using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBT_karnataka
{
    public partial class AadharAuthenticationandreferenceNumberGenerationService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string departmentname = Request.QueryString["DepartmentName"];
                string schemename = Request.QueryString["SchemeName"];
                string BeneficiaryId = Request.QueryString["BeneficiaryID"];
               
                lblDepartmentName.Text = departmentname;
                lblSchemeName.Text = schemename;
                lblBeneficiaryID.Text = BeneficiaryId;
            }
        }

        protected void txtAadharname_TextChanged(object sender, EventArgs e)
        {
            string aadhaarname = txtAadhaarName.Text.Trim();
            int one;
            bool success = int.TryParse(aadhaarname, out one);
            if (success == true)
            {
                string msg = "please enter valid AadharName";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }
            
        }

        protected void txtAadharNo_TextChanged(object sender, EventArgs e)
        {
         
            if (txtAadhaarNo.Text.Trim().Length != 12)
            {
                string msg = "please enter 12 digit valid  aadharnumber";

                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtAadhaarNo.Text=="")
            {
                string msg = "please enter  AadharNumber";

                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }
            if (txtAadhaarName.Text=="")
            {
                string msg = "please enter  AadharName";

                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;

            }
            if ((txtAadhaarNo.Text.Length !=12))
            {
                string msg = "please enter 12 digit  valid AadharNumber";

                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }

            if (!(txtAadhaarName.Text.Trim().Length>=3|| txtAadhaarName.Text.Trim().Length<=100))
            {
                string msg = "please enter valid AadharName";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }

            if (!(chkconsentdeclarationlabel.Checked))
            {
                string msg = "please check declaration box";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }
            else
            {
            
                string msg = "Authenticated successfully";
                
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-success");
                return;
            }
        }
    }
}