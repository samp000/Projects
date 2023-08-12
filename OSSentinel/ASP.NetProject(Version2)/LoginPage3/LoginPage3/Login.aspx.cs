using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LoginPage3
{
    public partial class Login1 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {

            try {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from registrationTable where username='" + txtUser.Text.Trim() + "' AND password='"+txtPass.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {

                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful...')</script>");
                        Session["username"] = dr.GetValue(5).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("Main.aspx");
                }
                else { 
                        Response.Write("<script>alert('Invalid Credentials');</script>");
                }

            }
            catch(Exception ex) { 
            }
           

        }

    }
   }







//SqlConnection con = new SqlConnection("Data Source=MACROCOSM;Initial Catalog=userreg;Integrated Security=True");
//con.Open();

//string chechuser = "select count(*) from userreg where username='" + txtUser.Text + "'";
//SqlCommand com = new SqlCommand(chechuser, con);
//int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

//con.Close();

//if (temp == 1)
//{

//    con.Open();
//    string passq = "select password from userreg where username='" + txtUser.Text + "'";
//    SqlCommand passcom = new SqlCommand(passq, con);

//    string password = passcom.ExecuteScalar().ToString();

//    if (password == txtPass.Text)
//    {
//        Session["Username"] = txtUser.Text;
//        Response.Redirect("Main.aspx");
//    }
//    else
//    {

//        Response.Write("<script>alert('Password is not correct')</script>");
//    }

//}
//else
//{

//    Response.Write("<script>alert('Username is not registered')</script>");
//}
//        }



