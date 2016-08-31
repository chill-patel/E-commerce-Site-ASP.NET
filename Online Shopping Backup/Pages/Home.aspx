<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/Main_Style.css" />--%>
    <%-- Javascript file --%>
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.min.js"></script>


    <%--   CSS FILE --%>
    <link rel="stylesheet" type="text/css" href="../CSS/css_container.css" />




    <link rel="stylesheet" href="../CSS/bootstrap.min.css" />
    <style type="text/css">
        #description {
            height: 150px;
            width: 150px;
        }
    </style>




    <section>



        <%--this is deal of the day--%>
        <div class="row">
            <div class="col-lg-12">


                <div id="my" class="carousel slide">


                    <ol class="carousel-indicators">
                        <li data-target="#my" data-slide-to="0"></li>
                        <li data-target="#my" data-slide-to="1"></li>
                        <li data-target="#my" data-slide-to="2"></li>
                        <li data-target="#my" data-slide-to="3"></li>

                    </ol>



                    <div class="carousel-inner">

                        <div class="item active">
                            <img src="../Images/1.jpg" class="img-responsive">

                            <div class="carousel-caption">
                                <h3 style="padding-left:500px"></h3>
                            </div>

                        </div>

                        <div class="item">
                            <img src="../Images/2.jpg" class="img-responsive">
                        </div>

                        <div class="item ">
                            <img src="../Images/3.jpg" class="img-responsive">
                        </div>

                        <div class="item">
                            <img src="../Images/4.jpg" class="img-responsive">
                        </div>

                    </div>

                    <a class="left carousel-control" href="#my" data-slide="prev">
                        <span class="icon-prev"></span></a>
                    <a class="right carousel-control" href="#my" data-slide="next">
                        <span class="icon-next"></span></a>



                </div>



            </div>

        </div>



        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" Width="783px" Height="305px" DataKeyField="P_ID">
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



            </div>

            <div class="col-lg-2">
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Pages/add_source.xml"></asp:XmlDataSource>

            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [P_ID], [Brand_image], [MRP], [Product_name], [Our_Prize] FROM [main_product] WHERE ([best_offer] = @best_offer)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="best_offer" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>

        </div>


    </section>

</asp:Content>
