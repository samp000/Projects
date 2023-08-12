using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage3
{
    public partial class Index : System.Web.UI.MasterPage
    {
 
        protected void Page_Load(object sender, EventArgs e)
        {
           try
            {
                if (Session["role"] == null) {

                    your_guards.Visible = false;        //your guards link
                    btn_sign_link.Visible = true;       //sign in button
                    sign_out.Visible = false;         //logout button
                    hello_user.Visible = false;         //hello user 
                    handle_sys.Visible = false;         //admin link for handle system

                }
                else if (Session["role"].ToString() == "user" ) {

                    your_guards.Visible = true;        //your guards link
                    btn_sign_link.Visible = false;       //sign in button
                    sign_out.Visible = true;         //logout button
                    hello_user.Visible = true;         //hello user 
                    handle_sys.Visible = false;         //admin link for handle system

                    hello_user.Text = "Hello " + Session["username"].ToString();
              
                } else if (Session["role"].ToString() == "admin" ) {

                    your_guards.Visible = false;        //your guards link
                    btn_sign_link.Visible = false;       //sign in button
                    sign_out.Visible = true;         //logout button
                    hello_user.Visible = true;         //hello user 
                    handle_sys.Visible = true;         //admin link for handle system

                    hello_user.Text = "Hello Admin";
                }
            }
            catch(Exception ex) { 
            }
        }

        protected void Log_out(object sender, EventArgs e)
        {
          
                Session.Clear();
                Session.RemoveAll();
                Session.Abandon();
                Response.Redirect("~/Main.aspx");

          
        }
    }
}



//if (Session["username"] == null)
//{
//    your_guards.Visible = false;
//    btn_sign_link.Visible = true;
//    btn_logout.Visible = false;
//    hello_user.Visible = false;
//}

//else if (Session["Username"] != null)
//{
//    your_guards.Visible = true;
//    btn_sign_link.Visible = false;
//    btn_logout.Visible = true;
//    hello_user.Visible = true;
//    hello_user.Text = "Hello " + Session["Username"].ToString();
//}