<%@ Page Title="" Language="C#" MasterPageFile="~/DBTkarnatakamaster.Master" AutoEventWireup="true" CodeBehind="Before Aadhar Authentication Page.aspx.cs" Inherits="DBT_karnataka.Before_Aadhar_Authentication_Page" %>
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
    </style>
    <script type="text/javascript">

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
    <h1 class="text-align:centre">BeneficiaryID and Scheme</h1>
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
    <div class="row">
        <div class="col-sm-1">
    <asp:Label ID="lblbeneficiaryId" runat="server" Text="BeneficiaryID"></asp:Label>
   </div>
        <div class="col-sm-4">
    <asp:TextBox ID = "txtBeneficiaryID" runat="server" autocomplete="off" Text = "" onkeypress="return validatenumerics(event);" />
            </div>
        </div>
<br />
<br />
   <div class="row">
       <div class="col-sm-1">Department</div>
       <div class="col-sm-4">
   <asp:DropDownList ID = "ddlDepartmentName" runat="server" CssClass="form-control" >

    <asp:ListItem Text="--Please select Department--" Value="0" Selected="True"/>
    <asp:ListItem Text="SocialWelfare Department" Value = "1" />
    <asp:ListItem Text="Tribal Welfare Department" Value = "2" />
    <asp:ListItem Text="BackwardClass Department" Value = "3" />
    <asp:ListItem Text="Minority Department" Value="4" />
</asp:DropDownList>
    <br />
    <br />
           </div>
    </div>
     <div class="row">
         <div class="col-sm-1">Scheme</div>
         <div class="col-sm-4">
    <asp:DropDownList ID = "ddlscheme" runat="server" CssClass="form-control">
        <asp:ListItem Text="--Please select scheme--" Value="0" Selected="True"/>
    <asp:ListItem Text="Scheme1" Value = "1" />
    <asp:ListItem Text="Scheme2" Value = "2" />
    <asp:ListItem Text="Scheme3" Value = "3" />
    <asp:ListItem Text="Scheme4" Value="4" />
</asp:DropDownList>
             </div>
         </div>
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <br />
            <br />
<asp:Button ID="btnSend" Text="Send" CssClass="btn-success text-center" runat="server" OnClick ="btnSend_Click"  />
            </div>
        <div class="col-sm-2"></div>
    </div>
</asp:Content>
