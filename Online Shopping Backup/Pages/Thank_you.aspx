<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Thank_you.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Thank_you" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />
    <div class="container">

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                <h1 style="padding-bottom:20px">Thank you your order sucessfully Place</h1>

                <h2 style="padding-bottom:0px">Best Offer</h2>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="284px" RepeatColumns="4" RepeatDirection="Horizontal" Width="902px">
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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [MRP], [Our_Prize], [Brand_image],[P_ID] FROM [main_product] WHERE ([best_seller] = @best_seller)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="best_seller" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <div class="col-lg-2">
            </div>
        </div>
    </div>
     
</asp:Content>
