<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Shopping_Backup.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="row">


        <div class="col-lg-3"></div>

        <div class="col-lg-4">


            <h3>Sign in to continue to Shopping</h3>
            <div class="form-group">

                <label>Username</label>


                <asp:TextBox CssClass="form-control" ID="txtusername" placeholder="Enter Username" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Name is Required"></asp:RequiredFieldValidator>

            </div>
            <div class="form-group">
                <label>Password</label>

                <asp:TextBox ID="txtpassword" placeholder="Enter Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
            </div>
            <%-- Height="38px" Width="105px"--%>
            <asp:Button ID="btn_submit" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btn_submit_Click" />
            <asp:Label runat="server" ID="lblerror"></asp:Label>
            <asp:HyperLink CssClass="btn btn-primary" ID="hyper_link_forget_password" NavigateUrl="~/Pages/forget_password.aspx" Text="Forget Password" runat="server"></asp:HyperLink>

        </div>


    </div>
    <div class="col-lg-5">
    </div>




</asp:Content>
