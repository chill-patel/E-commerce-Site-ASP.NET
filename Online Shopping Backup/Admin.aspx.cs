using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Shopping_Backup
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_delete_Product_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Delete_Product.aspx");
        }

        protected void btn_Add_Product_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Data_Insert.aspx");
        }

        protected void btn_Add_Admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/add_admin.aspx");

        }

        protected void btn_Edit_Product_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Edit_Product.aspx");
            
        }

        protected void btn_view_order_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_Order.aspx");
        }

        protected void btn_user_database_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/View_user_Database.aspx");

        }
    }
}