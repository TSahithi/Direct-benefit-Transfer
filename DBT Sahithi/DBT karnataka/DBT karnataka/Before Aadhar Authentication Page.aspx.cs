using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBT_karnataka
{
    public partial class Before_Aadhar_Authentication_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string BeneficiaryID = txtBeneficiaryID.Text;
            string DepartmentName = ddlDepartmentName.SelectedItem.Text;
            string SchemeName = ddlscheme.SelectedItem.Text;
            int DepartmentNo = Convert.ToInt32(ddlDepartmentName.SelectedValue);
            int schemeno = Convert.ToInt32(ddlscheme.SelectedValue);
          
            int two;
            bool success = int.TryParse(BeneficiaryID, out two);
            if (success == false)
            {
                string msg = "please enter Only Numbers";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }
            if (DepartmentNo==0 )
            {
               string  msg="Please Select Department";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }
            else if(schemeno == 0){
                string msg="Please Select Scheme";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + msg + "');", true);
                modalheader.Attributes.Add("class", "modal-header alert-danger");
                return;
            }
            else {
                Response.Redirect(string.Format("AadharAuthenticationandreferenceNumberGenerationService.aspx?DepartmentName={0}&SchemeName={1}&BeneficiaryID={2}", DepartmentName,SchemeName,BeneficiaryID));
            }
        }
    }
}