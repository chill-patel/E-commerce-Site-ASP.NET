<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="add_cart.aspx.cs" Inherits="Online_Shopping_Backup.add_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">

        <div class="col-lg-2">
        </div>
        <div class="col-lg-10" style="margin-top: 50px">
            <h1>Cart Detail</h1>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="o_id" DataSourceID="SqlDataSource1" GridLines="None" Height="411px" Width="785px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="image" runat="server" ImageUrl='<%#Eval("image") %>' />
                        <br />
                    </ItemTemplate>

                </asp:TemplateField>

                <asp:TemplateField HeaderText="Product name">
                    <ItemTemplate>
                        <div style="height: 30px; width: 400px">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Product_name") %>'></asp:Label>
                        </div>
                        <br />
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:BoundField DataField="brand" HeaderText="Brand" SortExpression="brand" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DELETE FROM [cart_product] WHERE [o_id] = @o_id" InsertCommand="INSERT INTO [cart_product] ([user_id], [product_id], [Product_name], [brand], [image], [quantity], [price]) VALUES (@user_id, @product_id, @Product_name, @brand, @image, @quantity, @price)" SelectCommand="SELECT * FROM [cart_product] WHERE ([user_id] = @user_id)" UpdateCommand="UPDATE [cart_product] SET [user_id] = @user_id, [product_id] = @product_id, [Product_name] = @Product_name, [brand] = @brand, [image] = @image, [quantity] = @quantity, [price] = @price WHERE [o_id] = @o_id">
            <DeleteParameters>
                <asp:Parameter Name="o_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:CookieParameter CookieName="u_id" Name="user_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="product_id" Type="Int32" />
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="brand" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="price" Type="Int32" />
                <asp:Parameter Name="o_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:ImageButton ID="btn_place_order" runat="server" ImageUrl="~/Images/place_order.png" OnClick="btn_place_order_Click" />
        <br />
        </div>
    </div>
    
</asp:Content>
