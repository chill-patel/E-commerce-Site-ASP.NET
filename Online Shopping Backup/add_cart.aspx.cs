using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics.Eventing.Reader;

namespace Online_Shopping_Backup
{
    public partial class add_cart : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void btn_place_order_Click(object sender, ImageClickEventArgs e)
        {
            int u_id = Convert.ToInt32(Request.Cookies["u_id"].Value);

            string product_id = "";

            conn.Open();

            string query = "SELECT STUFF((    SELECT ','+ [product_id] AS [text()] FROM [Shopping].[dbo].[cart_product]  WHERE [user_id] = '" + u_id + "' FOR XML PATH('') ), 1, 1,'')";

            SqlCommand cmd = new SqlCommand(query, conn);
            var result = cmd.ExecuteScalar();
            if (!Convert.IsDBNull(result))
                product_id = (string)result;
            conn.Close();

            Response.Redirect("~/order_summary.aspx?product_id=" + product_id);

        }
    }
}

