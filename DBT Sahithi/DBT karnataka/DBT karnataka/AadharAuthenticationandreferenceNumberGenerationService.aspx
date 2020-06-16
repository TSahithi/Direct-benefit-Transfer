<%@ Page Title="" Language="C#" MasterPageFile="~/DBTkarnatakamaster.Master" AutoEventWireup="true" CodeBehind="AadharAuthenticationandreferenceNumberGenerationService.aspx.cs" Inherits="DBT_karnataka.AadharAuthenticationandreferenceNumberGenerationService" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderDBTHead" runat="server">
   
      

  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="Content/bootstrap.min.css"/>
  <script src="Scripts/jquery-3.3.1.min.js"></script>
  <script src="Scripts/bootstrap.min.js"></script>
    <style>
        .noborder{
            border:none;
        }
        style1{
              border:none;
              border-collapse:collapse;
        }
    </style>
    <script type="text/javascript">

        function validateNameasinAadhaar(key) {
            debugger;
            //getting key code of pressed key
            var keycode = (key.which) ? key.which : key.keyCode;
            //comparing pressed keycodes

           
            if (!(keycode > 31 && (keycode < 48 || keycode > 57))) {
                alert(" You can enter only characters Alphabets and special characters ");
                return false;
            }
            else return true;
        }


        function validatenumerics(key) {
            //getting key code of pressed key
            var keycode = (key.which) ? key.which : key.keyCode;
            //comparing pressed keycodes

            if (keycode > 31 && (keycode < 48 || keycode > 57)) {
                alert(" You can enter only characters 0 to 9 ");
                return false;
            }
            else return true;
        }
         function ShowPopup(title, body) {
        $("#confirmDialog .modal-title").html(title);
        $("#confirmDialog .modal-body").html(body);
        $("#confirmDialog").modal("show");
    }
   

        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderDBTMain" runat="server">
    <h3 class="text-center"> <span style='font-weight:bold;'>AadharAuthenticationand ReferenceGeneration Service</span> </h3>
  <div id="confirmDialog" class="modal fade" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div id="modalheader" runat="server" class="modal-header alert-danger">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        ×</button>
                    <h4 class="modal-title">DirectBenefitTransfer Karnataka</h4>
                </div>
                <div class="modal-body" id="modalbody" runat="server">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">
                        Ok</button>
                </div>
            </div>
        </div>
    </div>
    <div class="row col-md-10 col-md-offset-1" id="DivAadhar">

          <div class="row">
              <div class="col-md-4 pull-left">
              <asp:Label ID="lblDepartmentName" runat="server"  Text=""></asp:Label>
            </div>
        
            <div class="col-md-4">
               <asp:Label ID="lblSchemeName" runat="server"  Text=""></asp:Label>
                </div>
            

            <div class="col-md-4 pull-right">
            
                <asp:Label ID="lblBeneficiaryID" runat="server" Text=""></asp:Label>
                </div>
            </div>
          <br />
           <div class="row">
                   <div class="col-sm-6">
               <asp:Label ID="lblAadharNo" runat="server"  Text="AadhaarNo"></asp:Label>
                       </div>
               
               </div>
        
    <div class="row">
        <div class="col-sm-6">
                    <asp:TextBox ID="txtAadhaarNo" runat="server" AutoPostBack="True" MaxLength="12" onkeypress="return validatenumerics(event);" onblur="return validatenumerics(event);" OnTextChanged="txtAadharNo_TextChanged" autocomplete="off" CssClass="form-control" MinLength="12" data-validation="required,length,number" data-validation-length="12-12" data-validation-error-msg-required="Please_Enter_valid_Aadhaar_Number" data-validation-error-msg-number="Please_Enter_Valid_Aadhaar_Number" data-validation-error-msg-length="Please_Enter_Valid_Aadhaar_Number" Style="display: inline-block;"></asp:TextBox>
                    </div>
                    <%--<asp:TextBox ID="txtAadhaarNo" runat="server" AutoPostBack="true" autocomplete="off" OnTextChanged="txtAadharNo_TextChanged" CssClass="form-control" MaxLength="12" MinLength="12" data-validation="required,length,number" data-validation-length="12-12" data-validation-error-msg-required="Please_Enter_valid_Aadhaar_Number" data-validation-error-msg-number="Please_Enter_Valid_Aadhaar_Number" data-validation-error-msg-length="Please_Enter_Valid_Aadhaar_Number" onkeypress="return validatenumerics(event);" onblur="return validatenumerics(event);">></asp:TextBox>--%>
              
        <asp:Label ID="lblaadharnoerror" runat="server" Visible="false"  Font-Size="X-Large" ForeColor="Red"></asp:Label>
            
            </div>
       <br />
                   <div class="row">
            <div class="col-sm-6">
                    <asp:Label ID="lblAadharName" runat="server"  Text="AadhaarName"></asp:Label>
                       </div>
                       </div>
        
        
                       <div class="row">
                   <div class="col-sm-6">
                 <asp:TextBox ID="txtAadhaarName" runat="server"  autocomplete="off" CssClass="form-control" Style="display: inline-block;" MaxLength="100" MinLength="3" data-validation="required,length" data-validation-length="3-100" data-validation-error-msg="Please_Enter_Aadhaar_Name" data-validation-error-msg-length="Please_Enter atleast 3 characters" onkeypress="return validateNameasinAadhaar(event);" CausesValidation="True"></asp:TextBox>
                               <asp:Label ID="lblAadharnameErr" runat="server"  ForeColor="Red"  Visible="false"></asp:Label>
                 </div>
                           </div>
                    
               <br />
           
            
          
          
                    <div class="row col-md-offset-2 col-md-10" id="consentparent" runat="server" visible="false">
         <asp:label ID="lblConsentText" runat="server"  Text="consentText"  Font-Size="Large"></asp:label></div>
               
                   
         <asp:CheckBox ID="chkconsentdeclarationlabel" runat="server" Checked="false" Enabled="True" Text="chkconsent" Visible="True"   data-validation="required" data-validation-error-msg="Please Check The Declaration Box" />
               <br /> <asp:Label ID="declarationerr" runat="server" ForeColor="Red" Visible="false"></asp:Label>

    
     
           
       <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
              
                    <asp:Button ID="btnSubmit" CssClass="btn-success text-center" runat="server" OnClick="btnSubmit_Click" Text="Submit"  />
                
              </div>
           </div>
    
            
    
    </div>

    

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
