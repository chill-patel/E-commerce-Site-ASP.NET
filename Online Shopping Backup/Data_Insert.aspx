<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Data_Insert.aspx.cs" Inherits="Online_Shopping_Backup.Data_Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top:30px">
        <div class="row">
            <div class="col-lg-1">
            </div>

            <div class="col-lg-5">


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingConnectionString %>" SelectCommand="SELECT * FROM [main_product]"></asp:SqlDataSource>

                <div class="form-group">
                    <label>   Product name</label>
                  
            <asp:TextBox CssClass="form-control" ID="txt_product_name" runat="server" ControlToValidate="txt_product_name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product Name is Required" ControlToValidate="txt_product_name"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label>  MRP </label>
                  
              <asp:TextBox CssClass="form-control" ID="txt_MRP" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="MRP is Required" ControlToValidate="txt_MRP"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label> Our Prize </label>
                   
                        <asp:TextBox CssClass="form-control" ID="txt_OUR_prise" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Our Prize is Required" ControlToValidate="txt_OUR_prise"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label> Discount </label>
                   
                        <asp:TextBox CssClass="form-control" ID="txt_Discount" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Discount field is Required" ControlToValidate="txt_Discount"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>Brand </label>
                    
                        <asp:DropDownList ID="ddlbrand_name" runat="server" >
                            <asp:ListItem Value="Samsung">Samsung</asp:ListItem>
                            <asp:ListItem Value="Mi">Mi</asp:ListItem>
                            <asp:ListItem Value="Motorola">Motorola</asp:ListItem>
                            <asp:ListItem Value="Micromax">Micromax</asp:ListItem>
                            <asp:ListItem Value="Sony">Sony</asp:ListItem>


                            <asp:ListItem Value="Apple">Apple</asp:ListItem>
                            <asp:ListItem Value="Lenovo">Lenovo</asp:ListItem>
                            <asp:ListItem Value="Asus">Asus</asp:ListItem>


                            <asp:ListItem Value="HP">HP</asp:ListItem>
                            <asp:ListItem Value="Acer">Acer</asp:ListItem>
                            <asp:ListItem Value="Dell">Dell</asp:ListItem>



                            <asp:ListItem Value="Mouse">Mouse</asp:ListItem>
                            <asp:ListItem Value="Pendrives">Pendrives</asp:ListItem>

                            <asp:ListItem Value="LG">LG</asp:ListItem>


                        </asp:DropDownList>

                </div>
                <div class="form-group">
                    <label>  Product Image</label>
                   
                        <asp:FileUpload ID="FileUpload1_brand_image" runat="server" />
                </div>
                <div class="form-group">
                    <label>   Type of product</label>
                  
                        <asp:DropDownList ID="ddl_type_of_product" runat="server">
                            <asp:ListItem Value="Mobiles">Mobiles</asp:ListItem>
                            <asp:ListItem Value="Tablet">Tablet</asp:ListItem>
                            <asp:ListItem Value="Laptops">Laptops</asp:ListItem>
                            <asp:ListItem Value="Computer_Accessories">Computer Accessories</asp:ListItem>
                            <asp:ListItem Value="Televisions">Televisions</asp:ListItem>
                        </asp:DropDownList>

                </div>
                <div class="form-group">
                    <label>  Imagepath1 </label>
                  
                        <asp:FileUpload ID="FileUpload2_img_path_1" runat="server" />

                </div>

                <div class="form-group">
                    <label>   Imagepath2 </label>
                 
                        <asp:FileUpload ID="FileUpload3_img_path_2" runat="server" />

                </div>

                <div class="form-group">
                    <label>      Imagepath3 </label>
              
                        <asp:FileUpload ID="FileUpload4_img_path_3" runat="server" />

                </div>

                <div class="form-group">
                    <label>   Imagepath4</label>
                  
                        <asp:FileUpload ID="FileUpload5_img_path_4" runat="server" />

                </div>

                <div class="form-group">
                    <label>   Detail </label>
                 
                          
                        <asp:TextBox ID="txt_detail" runat="server" Rows="8" Columns="65"  TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Detail is Required" ControlToValidate="txt_detail"></asp:RequiredFieldValidator>

                </div>

                <div class="form-group">
                    <label>   Stock</label>
                  
                            <asp:TextBox CssClass="form-control" ID="txt_stock" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Stock field is Required" ControlToValidate="txt_stock"></asp:RequiredFieldValidator>

                </div>

                <div class="form-group">
                    <label>  New arrival</label>
                   
                            <asp:TextBox ID="txt_new_arrival" CssClass="form-control" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="New arrival field is Required" ControlToValidate="txt_new_arrival"></asp:RequiredFieldValidator>
                </div>

                <div class="form-group">
                    <label> Best seller</label>
                    
                            <asp:TextBox CssClass="form-control" ID="txt_best_seller" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Best seller field is Required" ControlToValidate="txt_best_seller"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label> Best offer</label>
                    
                            <asp:TextBox CssClass="form-control" ID="txt_best_offer" runat="server" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Best offer field is Required" ControlToValidate="txt_best_offer"></asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="btnSub" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnSub_Click" Height="37px" Width="115px" />
               

            </div>


            <div class="col-lg-6">
            </div>
        </div>
        

    </div>
</asp:Content>
