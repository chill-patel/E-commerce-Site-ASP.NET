using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shopping_Backup.Pages
{
    public partial class Mobile_description : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btn_add_to_cart_Click(object sender, EventArgs e)
        {
            string p_id = "", u_id = "";
            try
            {
                p_id = Request.QueryString["P_ID"];

                u_id = Request.Cookies["u_id"].Value;

            }
            catch
            {

            }

            SqlCommand cmd = new SqlCommand("select * from login_data where id='" + u_id + "'", conn);

            SqlCommand Cmd = new SqlCommand("select * from main_product where p_id='" + p_id + "'", conn);
            string user_id = "", user_name = "", product_id = "", Product_name = "", brand = "", image = "", quantity = "", price = "";

            conn.Open();
            SqlDataReader sdr1 = cmd.ExecuteReader();

            while (sdr1.Read())
            {
                user_id = sdr1["id"].ToString();
                user_name = sdr1["name"].ToString();


            }
            conn.Close();
            conn.Open();
            SqlDataReader sdr2 = Cmd.ExecuteReader();
            while (sdr2.Read())
            {
                product_id = sdr2["P_ID"].ToString();
                Product_name = sdr2["Product_name"].ToString();
                brand = sdr2["Brand"].ToString();
                image = sdr2["Brand_image"].ToString();
                quantity = "1";
                price = sdr2["MRP"].ToString();
            }
            conn.Close();
            string query = "insert into cart_product values('" + user_id + "','" + user_name + "','" + product_id + "','" + Product_name + "','" + brand + "','" + image + "','" + quantity + "','" + price + "')";
            SqlCommand cmd1 = new SqlCommand(query, conn);
            conn.Open();
            cmd1.ExecuteNonQuery();

            conn.Close();
            Response.Redirect("~/add_cart.aspx");


        }

        protected void btn_buy_now_Click(object sender, EventArgs e)
        {
            string p_id = Request.QueryString["P_ID"];
            Response.Redirect("~/order_single.aspx?product_id=" + p_id);
        }


    }
}