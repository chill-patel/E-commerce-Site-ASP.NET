<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="add_admin.aspx.cs" Inherits="Online_Shopping_Backup.add_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="container">

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-4">
                <div class="form-group">
                    <label>
                        Name
                    </label>

                    <asp:TextBox CssClass="form-control" ID="txt_name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is Required" ControlToValidate="txt_name"></asp:RequiredFieldValidator>

                <div class="form-group">
                    <label>
                           Password
                    </label>
                  
                            <asp:TextBox CssClass="form-control" ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                           
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>
                          Email Address
                           
                    </label>
                     <asp:TextBox CssClass="form-control" ID="txt_Email_address" runat="server" TextMode="Email"></asp:TextBox>

                </div>
                <div class="form-group">
                    <label>
                          Role
                    </label>
                   
                            <asp:DropDownList ID="ddl_admin" runat="server">
                                <asp:ListItem Value="admin">Admin</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                            </asp:DropDownList>


                </div>
                <div class="form-group">
                    <label>
                           Address
                    </label>
                  
                            <asp:TextBox CssClass="form-control" ID="txt_address" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Address is Required" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>
                           Mobile no
                            
                    </label>
                    <asp:TextBox CssClass="form-control" ID="txt_mobile_no" runat="server"></asp:TextBox>

                </div>
               <asp:Button CssClass="btn btn-primary" ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
            </div>
                </div>
            <div class="col-lg-6">
            </div>
        </div>
    </div>


</asp:Content>
