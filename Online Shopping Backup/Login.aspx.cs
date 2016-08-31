using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Online_Shopping_Backup
{

    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }







        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from login_data", conn);
            conn.Open();
            if (conn.State == ConnectionState.Open)
            {
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    if (sdr[1].ToString().Equals(txtusername.Text) && sdr[2].ToString().Equals(txtpassword.Text))
                    {
                        Response.Cookies["uname"].Value = sdr[1].ToString();
                        Response.Cookies["u_id"].Value = sdr[0].ToString();
                        Session["Role"] = sdr[3].ToString();
                        FormsAuthentication.RedirectFromLoginPage(txtusername.Text, false);
                        Response.Redirect("~/Pages/Home.aspx");

                    }
                    else
                    {
                        lblerror.Text = "Please enter write username and password";
                    }

                }

            }

            else
            {

            }
        }



    }
}