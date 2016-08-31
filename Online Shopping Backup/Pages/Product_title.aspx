<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Product_title.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Product_title" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />
    
     <div class="row" style="margin-top:20px">
        <div class="col-lg-2"></div>
        <div class="col-lg-10">


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="264px" RepeatColumns="4" RepeatDirection="Horizontal" Width="850px">
         <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Brand_image") %>' PostBackUrl='<%#"Mobile_description.aspx?P_ID="+Eval("P_ID")%>' />
                    <br />

                    <div id="product_name">
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                    </div>
                    <div id="price">

                        <del>
                            <asp:Label ID="MRPLabel" runat="server" Text='<%# Eval("MRP") %>' />
                            <br />
                        </del>
                        Rs:<asp:Label ID="Our_PrizeLabel" runat="server" Text='<%# Eval("Our_Prize") %>' />
                        <br />
                    </div>
                </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [MRP], [Our_Prize], [Brand_image], [Type_of_product],[P_ID] FROM [main_product] WHERE ([Type_of_product] = @Type_of_product)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Type_of_product" QueryStringField="type_of_product" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

            </div>
         </div>
    
</asp:Content>
