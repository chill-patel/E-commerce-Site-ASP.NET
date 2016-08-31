<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="Online_Shopping_Backup.Edit_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row" style="padding-top:20px">
        <div class="col-lg-2">

        </div>
                <div class="col-lg-10">

                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" Height="128px" Width="599px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="mobile_no" HeaderText="Mobile No" SortExpression="mobile_no" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            <asp:BoundField DataField="password" Visible="false"  HeaderText="Password" SortExpression="password" />
            <asp:BoundField DataField="name" HeaderText="Username" ReadOnly="True" SortExpression="name" />
            <asp:TemplateField HeaderText="Password">

                <EditItemTemplate>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Text='<%#Bind("password") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is Required" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DELETE FROM [login_data] WHERE [name] = @name" InsertCommand="INSERT INTO [login_data] ([name], [password], [address], [mobile_no], [Email]) VALUES (@name, @password, @address, @mobile_no, @Email)" SelectCommand="SELECT [name], [password], [address], [mobile_no], [Email] FROM [login_data] WHERE ([id] = @id)" UpdateCommand="UPDATE [login_data] SET [password] = @password, [address] = @address, [mobile_no] = @mobile_no, [Email] = @Email WHERE [name] = @name">
        <DeleteParameters>
            <asp:Parameter Name="name" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobile_no" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:CookieParameter CookieName="u_id" Name="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="mobile_no" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="name" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


        </div>


    </div>

   
</asp:Content>
