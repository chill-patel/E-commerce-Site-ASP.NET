<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="forget_password.aspx.cs" Inherits="Online_Shopping_Backup.Pages.forget_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row"">
        
            <div class="col-lg-3">
            </div>

      
        <div class="col-lg-4" >

            <div class="form-group">
                    <h2 style="padding-top:0px;padding-bottom:20px;margin:0px">Having trouble signing in ?</h2>
                <label>Username</label>
                <asp:TextBox CssClass="form-control"  ID="txt_username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="txt_username"></asp:RequiredFieldValidator>

            </div>

            <div class="form-group">

                <label>Question</label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>What is your favorite color</asp:ListItem>
                    <asp:ListItem>What is the name of your school</asp:ListItem>
                    <asp:ListItem>What is the  name of  your first School teacher</asp:ListItem>
                </asp:DropDownList>


            </div>

                     <div class="form-group">

                <label>Answer</label>
                <asp:TextBox CssClass="form-control" ID="txt_answer" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Answere is requird" ControlToValidate="txt_answer"></asp:RequiredFieldValidator>

            </div>
             <asp:Button CssClass="btn btn-primary" ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
        </div>
        <div class="col-lg-5">

        </div>
    </div>
        </div>
</asp:Content>
