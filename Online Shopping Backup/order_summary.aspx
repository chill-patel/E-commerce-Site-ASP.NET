<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="order_summary.aspx.cs" Inherits="Online_Shopping_Backup.order_summary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-lg-2">

            </div>
            <div class="col-lg-8">
                  <h1>Order Summary</h1>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None" Height="341px" Width="663px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="Product name">
                <ItemTemplate>
                    <div style="height:30px;width:400px">
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
                        </div>
                         <br />
                </ItemTemplate>
                        
            </asp:TemplateField>

            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        </Columns>
    </asp:GridView>

            </div>
            <div class="col-lg-2">

            </div>
        </div>

          <div class="row">
            <div class="col-lg-2">

            </div>
            <div class="col-lg-5">
                 <h2>Select Shipping Address And Payment option</h2>
                
    <div class="form-group"> 
       <label> Name </label> 
                <asp:TextBox CssClass="form-control" ID="txt_username" runat="server"></asp:TextBox>
    </div>
     <div class="form-group"> 
        <label>Email Address </label> <asp:TextBox ID="txt_email" CssClass="form-control" runat="server"></asp:TextBox>

    </div>
      <div class="form-group"> 
         <label> Mobile no </label><asp:TextBox CssClass="form-control" ID="txt_mobile_no" runat="server"></asp:TextBox>
    </div>
     <div class="form-group"> 
      <label> Address</label>    <asp:TextBox  ID="txt_Address" runat="server" TextMode="MultiLine" Rows="8" Columns="63"> </asp:TextBox>
    </div>
   
     <div class="form-group"> 
        <label>Payment Option </label>  
                <asp:DropDownList ID="ddl_payment_option" runat="server">
                    <asp:ListItem Value="Cash">Cash on delivery</asp:ListItem>
                </asp:DropDownList>

    </div>
      <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="Book" OnClick="Button1_Click"/>



            </div>
            <div class="col-lg-5">

            </div>
        </div>

    </div>
  
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString%>" SelectCommand="SELECT [Product_name], [image], [price], [quantity] FROM [cart_product] WHERE ([user_id] = @user_id) ORDER BY [price]">
        <SelectParameters>
            <asp:CookieParameter CookieName="u_id" Name="user_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   



</asp:Content>
