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
    public partial class UserPanel : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int no_of_guards;
        String type;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd1 = new SqlCommand("select noof_guards, guard_type from GetGuardsTable where username='" + Session["username"] + "'", con);
                SqlDataReader dr1 = cmd1.ExecuteReader();

                if (dr1.HasRows)
                {

                    while (dr1.Read())
                    {
                        no_of_guards = dr1.GetInt32(0);
                        type = dr1.GetValue(1).ToString();
                    }
                }
                else
                {
                    Response.Write("<script>alert('Havent choose guards yet');</script>");
                }




            }
            catch { 
            
           }
            LoadGuardsData();


        }

        private void LoadGuardsData()
        {
            try
            {

                using (SqlConnection con = new SqlConnection(strcon))
                {

                    SqlCommand cmd = new SqlCommand("Select top 5 * from GuardsInfoTable where type like \'%" + type + "%\' ", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@no", no_of_guards);

                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    rdr.Close();
                }
            }
            catch (Exception e) {
                Response.Write("<script>alert('"+e.Message+"')</script>");
            }

        }
    }
}

//SqlParameter param = new SqlParameter();
//param.ParameterName = "@no";
//param.Value = no_of_guards;
//cmd.Parameters.Add(param);
