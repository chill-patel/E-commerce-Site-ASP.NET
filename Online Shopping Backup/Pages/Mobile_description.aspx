<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Mobile_description.aspx.cs" Inherits="Online_Shopping_Backup.Pages.Mobile_description" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <link rel="stylesheet" href="../CSS/bootstrap.css" type="text/css" />

    <link rel="stylesheet" href="../CSS/magnific-popup.css" type="text/css" />

    <script type="text/javascript" src="../Scripts/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.etalage.min.js"></script>

    <link rel="stylesheet" href="../CSS/etalage.css" type="text/css" />

    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 200,
                mainClass: 'my-mfp-zoom-in'
            });
        });
    </script>

    <script>
        jQuery(document).ready(function ($) {

            $('#etalage').etalage({
                thumb_image_width: 230,
                thumb_image_height: 350,
                show_hint: true,
                click_callback: function (image_anchor, instance_id) {
                    alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                }
            });


        });

    </script>
    <style type="text/css">
        #list_style ul {
            margin: 0px;
            padding: 0px;
        }

            #list_style ul li {
                float: left;
                display: block;
                list-style-type: none;
                padding-right: 30px;
            }
    </style>

    <link rel="stylesheet" type="text/css" href="../CSS/Mobile_description.css" />


    <div class="container" style="margin-top: 30px">

        <div class="row">

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>

            <div class="col-lg-2"></div>
            <div class="col-lg-4">

                <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <ul id="etalage">
                            <li>
                                <img id="Img1" class="etalage_thumb_image" runat="server" src='<%# Eval("Imagepath1") %>' />
                                <img id="Img2" class="etalage_source_image" runat="server" src='<%# Eval("Imagepath1") %>' />





                            </li>
                            <li>
                                <img id="Img3" class="etalage_thumb_image" runat="server" src='<%# Eval("Imagepath2") %>' />
                                <img id="Img4" class="etalage_source_image" runat="server" src='<%# Eval("Imagepath2") %>' />
                            </li>

                            <li>
                                <img id="Img5" class="etalage_thumb_image" runat="server" src='<%# Eval("Imagepath3") %>' />
                                <img id="Img6" class="etalage_source_image" runat="server" src='<%# Eval("Imagepath3") %>' />
                            </li>

                            <li>

                                <img id="Img7" class="etalage_thumb_image" runat="server" src='<%# Eval("Imagepath4") %>' />
                                <img id="Img8" class="etalage_source_image" runat="server" src='<%# Eval("Imagepath4") %>' />


                            </li>


                        </ul>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-lg-6">

                <asp:DataList ID="DataList1" runat="server" DataKeyField="P_ID" DataSourceID="SqlDataSource1">



                    <ItemTemplate>
                        <div id="product_name_width">
                            <asp:Label ID="Product_nameLabel" runat="server" CssClass="product_name" Text='<%# Eval("Product_name") %>' />
                            <br />
                        </div>
                        <span id="rs">Rs.</span><asp:Label ID="MRPLabel" CssClass="price" runat="server" Text='<%# Eval("MRP") %>' />
                        <br />
                        <br />
                        <span id="brand_name">Brand</span>
                        <asp:Label ID="BrandLabel" runat="server" CssClass="brand" Text='<%# Eval("Brand") %>' />
                        <br />



                        <div id="buy_now_css">
                            <ul>
                                <li>
                                    <asp:Button ID="btn_add_to_cart" CssClass="btn btn-primary" runat="server" Text="ADD TO CART" OnClick="btn_add_to_cart_Click" />
                                </li>
                                <li>
                                    <asp:Button ID="btn_buy_now" CssClass="btn btn-success" runat="server" Text="BUY NOW" OnClick="btn_buy_now_Click" />
                                </li>
                            </ul>
                        </div>
                    </ItemTemplate>
                </asp:DataList>

                <asp:DataList ID="DataList2" runat="server" DataKeyField="P_ID" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <h2>Specification</h2>
                        <div id="Description_width">
                            <asp:Label ID="DetailLabel" CssClass="description" runat="server" Text='<%# Eval("Detail") %>' />
                        </div>

                    </ItemTemplate>
                </asp:DataList>

            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4] FROM [main_product] WHERE ([P_ID] = @P_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="P_ID" QueryStringField="P_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT [P_ID], [Product_name], [MRP], [Our_Prize], [Imagepath1], [Imagepath2], [Imagepath3], [Imagepath4],[Brand],[Detail] FROM [main_product] WHERE ([P_ID] = @P_ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="P_ID" QueryStringField="P_ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    </div>

        <div class="row">
            <div class="col-lg-12">
            </div>

        </div>

    <div class="row">
        <div class="col-lg-2">

        </div>
        <div class="col-lg-10">
            <div id="disqus_thread">
        <script type="text/javascript">
            /* * * CONFIGURATION VARIABLES * * */
            var disqus_shortname = 'sunil219767';

            /* * * DON'T EDIT BELOW THIS LINE * * */
            (function () {
                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
            })();
        </script>
        <noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
    </div>

        </div>
    </div>
    

</asp:Content>
