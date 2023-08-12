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
    public partial class register : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        String gender;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }
        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";
        }

        //register Button 
        protected void btnreg_Click(object sender, EventArgs e)
        {

            if (checkUserExists()) {
                Response.Write("<script>alert('User Already Exists')</script>");
            }else {
                signupNewUSer();
            }

        
            

            //Response.Write("<script>alert('Test')</script>");
        }


        bool checkUserExists() {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from registrationTable where username='"+txtuser.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {

                    return true;
                }
                else {

                    return false;
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }

        }

        void signupNewUSer() {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO registrationTable(name,address,gender,phone,email,username,password) values " +
                    "(@name,@address,@gender,@phone,@email,@username,@password)", con);

                cmd.Parameters.AddWithValue("@name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtAddr.Text.Trim());
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@phone", txtPhone.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@username", txtuser.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtPass.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Registered Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }





        protected void gotologin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void gotoadminlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminLogin.aspx");
        }
    }


}

