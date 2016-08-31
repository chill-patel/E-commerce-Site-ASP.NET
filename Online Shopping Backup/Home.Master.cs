using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Online_Shopping_Backup
{
    public partial class Home : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                string Role = Session["Role"].ToString();

                lbl_name.Text = "Welcome " + Request.Cookies["uname"].Value;
                
                
                if (Role != null)
                {
                    if (Role == "admin")
                    {

                        btn_submit.Visible = true;
                    }
                    else
                    {
                        btn_submit.Visible = false;
                    }
                }


                else
                {
                    btn_submit.Visible = false;

                }


                if (Role != null)
                {
                    if (Role == "user" || Role == "admin")
                    {

                        btn_Edit_Profile.Visible = true;
                    }
                    else
                    {
                        btn_Edit_Profile.Visible = false;
                    }
                }


                else
                {
                    btn_Edit_Profile.Visible = false;

                }






            }
            catch
            {

            }

            //navigation();

        }



        protected void img_shopping_chart_Click(object sender, ImageClickEventArgs e)
        {
            string u_id = "";
            try
            {
                u_id = Request.Cookies["u_id"].Value;
            }
            catch
            { }

            Response.Redirect("~/add_cart.aspx?u_id=" + u_id);

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }

        protected void btn_Img_search_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Pages/Search_result.aspx?Search=" + txtSearch.Text);
        }

        protected void btn_Edit_Profile_Click(object sender, EventArgs e)
        {
          

           Response.Redirect("~/Edit_Profile.aspx");
        }

       
       

        //public void navigation()
        //{

        
        //    Hyper_Mobiles_Mi.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobiles&Brand=" + Hyper_Mobiles_Mi.Text.ToString() + "";
        //    Hyper_Mobiles_Samsung.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobiles&Brand=" + Hyper_Mobiles_Samsung.Text.ToString() + "";
        //    Hyper_Mobiles_Sony.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobiles&Brand=" + Hyper_Mobiles_Sony.Text.ToString() + "";
        //    Hyper_Mobiles_Micromax.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobiles&Brand=" + Hyper_Mobiles_Micromax.Text.ToString() + "";
        //    Hyper_Mobiles_motorola.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobiles&Brand=" + Hyper_Mobiles_motorola.Text.ToString() + "";

        //    Hyper_Tablet_Lenovo.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Tablet&Brand=" + Hyper_Tablet_Lenovo.Text.ToString() + "";
        //    Hyper_Tablet_Assus.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Tablet&Brand=" + Hyper_Tablet_Assus.Text.ToString() + "";
        //    Hyper_Tablet_Micromax.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Tablet&Brand=" + Hyper_Tablet_Micromax.Text.ToString() + "";
        //    Hyper_Tablet_Samsung.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Tablet&Brand=" + Hyper_Tablet_Samsung.Text.ToString() + "";
        //    Hyper_Tablet_Apple.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Tablet&Brand=" + Hyper_Tablet_Apple.Text.ToString() + "";



        //    Hyper_Laptop_Acer.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Laptops&Brand=" + Hyper_Laptop_Acer.Text.ToString() + "";
        //    Hyper_Laptop_Apple.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Laptops&Brand=" + Hyper_Laptop_Apple.Text.ToString() + "";
        //    Hyper_Laptop_Dell.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Laptops&Brand=" + Hyper_Laptop_Dell.Text.ToString() + "";
        //    Hyper_Laptop_HP.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Laptops&Brand=" + Hyper_Laptop_HP.Text.ToString() + "";


        //    Hyper_Computer_Accessories_Mouse.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobile_Accessories&Brand=" + Hyper_Computer_Accessories_Mouse.Text.ToString() + "";
        //    Hyper_Computer_Accessories_Pendrives.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Mobile_Accessories&Brand=" + Hyper_Computer_Accessories_Pendrives.Text.ToString() + "";

        //    Hyper_Mobile_Accessories_caseandcover.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Computer_Accessories&Brand=" + Hyper_Mobile_Accessories_caseandcover.Text.ToString() + "";
        //    Hyper_Mobile_Accessories_Headphones.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Computer_Accessories&Brand=" + Hyper_Mobile_Accessories_Headphones.Text.ToString() + "";

        //    Hyper_Televisions_LG.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Televisions&Brand=" + Hyper_Televisions_LG.Text.ToString() + "";
        //    Hyper_Televisions_Sony.NavigateUrl = "~/Pages/single_page.aspx?type_of_product=Televisions&Brand=" + Hyper_Televisions_Sony.Text.ToString() + "";
      
           
        //}


    }


}
