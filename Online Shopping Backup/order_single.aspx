<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="order_single.aspx.cs" Inherits="Online_Shopping_Backup.order_single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" GridLines="None" Height="207px" Width="677px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Brand_image") %>' />

                </ItemTemplate>
            </asp:TemplateField>


            <asp:BoundField DataField="Product_name" HeaderText="Product name" SortExpression="Product_name" />

            <asp:BoundField DataField="Our_Prize" HeaderText="Total" SortExpression="Our_Prize" />

        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [Brand_image], [Our_Prize] FROM [main_product] WHERE ([P_ID] = @P_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="P_ID" QueryStringField="product_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <h2>Select Shipping Address And Payment option</h2>

    <div class="row">
        <div class="col-lg-2">
        </div>

        <div class="col-lg-4">
            <div class="form-group">
                <label>Name </label>
                <asp:TextBox CssClass="form-control" ID="txt_username" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Email Address </label>
                <asp:TextBox CssClass="form-control" ID="txt_email" runat="server"></asp:TextBox></td>
            </div>

            <div class="form-group">
                <label>Mobile no </label>
                <asp:TextBox CssClass="form-control" ID="txt_mobile_no" runat="server"></asp:TextBox></td>
            </div>

            <div class="form-group">
                <label>Address </label>
                <asp:TextBox CssClass="form-control" ID="txt_Address" runat="server" TextMode="MultiLine" Rows="8" Columns="35"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Payment Option </label>
                
                <asp:DropDownList ID="ddl_payment_option" runat="server">
                    <asp:ListItem Value="Cash">Cash on delivery</asp:ListItem>
                  
                </asp:DropDownList>
            </div>

            <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="Book" OnClick="Button1_Click" />


        </div>

        <div class="col-lg-6">
        </div>

    </div>



</asp:Content>
