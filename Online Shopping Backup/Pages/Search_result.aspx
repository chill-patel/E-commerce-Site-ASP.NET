<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Search_result.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Search_result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />

    <div class="container">

        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="711px" Height="305px">

                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Brand_image") %>' PostBackUrl='<%#"Mobile_description.aspx?P_ID="+Eval("P_ID")%>' />
                        <br />

                        <div id="product_name">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label>
                        </div>
                        <div id="price">

                            <del>
                                <asp:Label ID="MRPLabel" runat="server" Text='<%# Eval("MRP") %>' />
                            </del>
                            Rs:<asp:Label ID="Our_PrizeLabel" runat="server" Text='<%# Eval("Our_Prize") %>' />
                            <br />
                        </div>


                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Product_name], [MRP], [Brand_image],[P_ID],[Our_Prize] FROM [main_product] WHERE ([Product_name] LIKE '%' + @Product_name + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Product_name" QueryStringField="Search" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
            <div class="col-lg-2">
            </div>
        </div>
    </div>




</asp:Content>
