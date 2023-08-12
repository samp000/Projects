using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginPage3.html
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["role"] == null)
            {
                Response.Write("<script>alert('You can getguard by logging in....')</script>");
            }

            try
            {
                if (Session["role"] == null)
                {
                    get_guard_btn.Visible = false;          //getguard button
                }
                else if (Session["role"].ToString() == "user")
                {

                    get_guard_btn.Visible = true;          //getguard button

                }
                else if (Session["role"].ToString() == "admin")
                {
                    get_guard_btn.Visible = true;          //getguard button
                }
            }
            catch (Exception ex)
            {
            }
        }

        protected void get_guard_btn_Click(object sender, EventArgs e)
        {
            Session["guardType"] = "hotel_service";
            Response.Redirect("~/GetguardForm.aspx");
        }
    }
}