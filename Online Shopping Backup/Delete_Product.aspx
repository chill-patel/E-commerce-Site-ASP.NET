<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete_Product.aspx.cs" Inherits="Online_Shopping_Backup.Edite_Delete_Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

      <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.css" />

    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="Back to Admin Task" Height="58px" Width="203px" OnClick="Button1_Click" />
   <div class="row">
       <div class="col-lg-12">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="P_ID" DataSourceID="SqlDataSource1" GridLines="Vertical">
           <AlternatingRowStyle BackColor="#DCDCDC" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" />
               <asp:BoundField DataField="P_ID" HeaderText="P_ID" InsertVisible="False" ReadOnly="True" SortExpression="P_ID" />
               <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
               <asp:BoundField DataField="MRP" HeaderText="MRP" SortExpression="MRP" />
               <asp:BoundField DataField="Our_Prize" HeaderText="Our_Prize" SortExpression="Our_Prize" />
               <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
               <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
               <asp:BoundField DataField="Brand_image" HeaderText="Brand_image" SortExpression="Brand_image" />
               <asp:BoundField DataField="Type_of_product" HeaderText="Type_of_product" SortExpression="Type_of_product" />
               <asp:BoundField DataField="Imagepath1" HeaderText="Imagepath1" SortExpression="Imagepath1" />
               <asp:BoundField DataField="Imagepath2" HeaderText="Imagepath2" SortExpression="Imagepath2" />
               <asp:BoundField DataField="Imagepath3" HeaderText="Imagepath3" SortExpression="Imagepath3" />
               <asp:BoundField DataField="Imagepath4" HeaderText="Imagepath4" SortExpression="Imagepath4" />
               <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
               <asp:BoundField DataField="stock" HeaderText="stock" SortExpression="stock" />
               <asp:BoundField DataField="new_arrival" HeaderText="new_arrival" SortExpression="new_arrival" />
               <asp:BoundField DataField="best_seller" HeaderText="best_seller" SortExpression="best_seller" />
               <asp:BoundField DataField="best_offer" HeaderText="best_offer" SortExpression="best_offer" />
           </Columns>
           <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
           <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
           <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
           <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F1F1F1" />
           <SortedAscendingHeaderStyle BackColor="#0000A9" />
           <SortedDescendingCellStyle BackColor="#CAC9C9" />
           <SortedDescendingHeaderStyle BackColor="#000065" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" DeleteCommand="DELETE FROM [main_product] WHERE [P_ID] = @P_ID" InsertCommand="INSERT INTO [main_product] ([Product_name], [MRP], [Our_Prize], [Discount], [Brand], [Brand_image], [Type_of_product], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4], [Detail], [stock], [new_arrival], [best_seller], [best_offer]) VALUES (@Product_name, @MRP, @Our_Prize, @Discount, @Brand, @Brand_image, @Type_of_product, @Imagepath1, @Imagepath2, @Imagepath3, @Imagepath4, @Detail, @stock, @new_arrival, @best_seller, @best_offer)" SelectCommand="SELECT * FROM [main_product]" UpdateCommand="UPDATE [main_product] SET [Product_name] = @Product_name, [MRP] = @MRP, [Our_Prize] = @Our_Prize, [Discount] = @Discount, [Brand] = @Brand, [Brand_image] = @Brand_image, [Type_of_product] = @Type_of_product, [Imagepath1] = @Imagepath1, [Imagepath2] = @Imagepath2, [Imagepath3] = @Imagepath3, [Imagepath4] = @Imagepath4, [Detail] = @Detail, [stock] = @stock, [new_arrival] = @new_arrival, [best_seller] = @best_seller, [best_offer] = @best_offer WHERE [P_ID] = @P_ID">
           <DeleteParameters>
               <asp:Parameter Name="P_ID" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="Product_name" Type="String" />
               <asp:Parameter Name="MRP" Type="Int32" />
               <asp:Parameter Name="Our_Prize" Type="Int32" />
               <asp:Parameter Name="Discount" Type="Int32" />
               <asp:Parameter Name="Brand" Type="String" />
               <asp:Parameter Name="Brand_image" Type="String" />
               <asp:Parameter Name="Type_of_product" Type="String" />
               <asp:Parameter Name="Imagepath1" Type="String" />
               <asp:Parameter Name="Imagepath2" Type="String" />
               <asp:Parameter Name="Imagepath3" Type="String" />
               <asp:Parameter Name="Imagepath4" Type="String" />
               <asp:Parameter Name="Detail" Type="String" />
               <asp:Parameter Name="stock" Type="Int32" />
               <asp:Parameter Name="new_arrival" Type="Int32" />
               <asp:Parameter Name="best_seller" Type="Int32" />
               <asp:Parameter Name="best_offer" Type="Int32" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="Product_name" Type="String" />
               <asp:Parameter Name="MRP" Type="Int32" />
               <asp:Parameter Name="Our_Prize" Type="Int32" />
               <asp:Parameter Name="Discount" Type="Int32" />
               <asp:Parameter Name="Brand" Type="String" />
               <asp:Parameter Name="Brand_image" Type="String" />
               <asp:Parameter Name="Type_of_product" Type="String" />
               <asp:Parameter Name="Imagepath1" Type="String" />
               <asp:Parameter Name="Imagepath2" Type="String" />
               <asp:Parameter Name="Imagepath3" Type="String" />
               <asp:Parameter Name="Imagepath4" Type="String" />
               <asp:Parameter Name="Detail" Type="String" />
               <asp:Parameter Name="stock" Type="Int32" />
               <asp:Parameter Name="new_arrival" Type="Int32" />
               <asp:Parameter Name="best_seller" Type="Int32" />
               <asp:Parameter Name="best_offer" Type="Int32" />
               <asp:Parameter Name="P_ID" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
       </div>

   </div>
        <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="Back to Admin Task" OnClick="Button2_Click" />
    </form>
</body>
</html>
