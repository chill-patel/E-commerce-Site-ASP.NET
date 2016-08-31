<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-10">
                <h3>Registration From</h3>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-5">

                <div class="form-group">
                    <label>Name</label>


                    <asp:TextBox CssClass="form-control" ID="txt_name" runat="server" placeholder="Enter Username"></asp:TextBox>
                    <asp:Label ID="lbl_error" runat="server"></asp:Label>



                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">

                    <label>
                        Password
                    </label>
                    <asp:TextBox ID="txt_password" CssClass="form-control" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>

                    <asp:PasswordStrength ID="PasswordStrength1" runat="server" StrengthIndicatorType="Text" PrefixText="Strength:" TargetControlID="txt_password"></asp:PasswordStrength>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">

                    <label>Email Address</label>
                    <asp:TextBox ID="txt_Email_address" runat="server" placeholder="Enter Email Address" TextMode="Email" CssClass="form-control"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_Email_address" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">

                    <label>Address</label>
                    <asp:TextBox ID="txt_address" runat="server" placeholder="Enter Address" TextMode="MultiLine" CssClass="form-control" Columns="5" Rows="20" Height="145px" Width="452px"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_address" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">

                    <label>Mobile no</label>
                    <asp:TextBox ID="txt_mobile_no" placeholder="Enter Mobile No" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_mobile_no" ErrorMessage="Mobile no is Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="txt_mobile_no" ErrorMessage="Please enter valid mobile no"
                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                </div>

                               <div class="form-group">

                    <label>Question</label>
                                   <asp:DropDownList ID="DropDownList1" runat="server">
                                       <asp:ListItem>What is your favorite color</asp:ListItem>
                                       <asp:ListItem>What is the name of your school</asp:ListItem>
                                       <asp:ListItem>What is the  name of  your first School teacher</asp:ListItem>
                                   </asp:DropDownList>

                    <asp:TextBox ID="txt_answer" placeholder="Enter your Answer" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>

                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Answere is Required" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
                  

                </div>


                <asp:Button CssClass="btn btn-info" ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />

            </div>
            <div class="col-lg-5">
            </div>
        </div>
    </div>










</asp:Content>
