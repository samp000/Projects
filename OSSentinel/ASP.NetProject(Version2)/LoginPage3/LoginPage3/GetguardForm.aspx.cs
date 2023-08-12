using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LoginPage3
{
    public partial class GetguardForm : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submit_guard_btn_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("  INSERT INTO  GetGuardsTable(cust_name, cust_email, cust_phone, cust_address, noof_guards,username,guard_type)  values " +
                   "(@name,@email,@phone,@address,@no_of_guards,@username,@guardtype)", con);

                cmd.Parameters.AddWithValue("@name", cust_name.Text.Trim());
                cmd.Parameters.AddWithValue("@email", cust_email.Text.Trim());
                cmd.Parameters.AddWithValue("@phone", cust_phno.Text.Trim());
                cmd.Parameters.AddWithValue("@address", cust_Addr.Text.Trim());
                cmd.Parameters.AddWithValue("@no_of_guards", int.Parse(noOf_guards.Text));
                cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
                cmd.Parameters.AddWithValue("@guardtype", Session["guardType"].ToString());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Get Guard form submitted... , Our admin will contact you');window.location='Main.aspx';</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

   
    }
}