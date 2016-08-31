using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Online_Shopping_Backup.Pages
{

    public partial class forget_password : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ShoppingConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from login_data where name='"+txt_username.Text+"' ", conn);
            conn.Open();
             string answer="";
             string email = "";
             string password  = "";
             if (conn.State == ConnectionState.Open)
             {
                 SqlDataReader sdr = cmd.ExecuteReader();
                 while (sdr.Read())
                 {
                     answer = sdr["Answer"].ToString();
                     email= sdr["Email"].ToString();
                     password = sdr["password"].ToString();
                 }
              
                 if(txt_answer.Text.ToUpper().Equals(answer.ToUpper()))
                 {
                     try
                         {
                         //create the mail message

                     MailMessage mail = new MailMessage();

                     //set the addresses

                     mail.From = new MailAddress("sunil64500@gmail.com");
                     mail.To.Add(email);

                     //set the content
                     mail.Subject = "Save your Password";
                     mail.Body = "This is your password " + password + " Please save it carefully";

                     //send the message
                     SmtpClient smtp = new SmtpClient();
                     smtp.Send(mail);
                         }

                         catch
                          {
                         
                         }
                   
                     
                 }

                 conn.Close();
             }



            
        }
    }
}