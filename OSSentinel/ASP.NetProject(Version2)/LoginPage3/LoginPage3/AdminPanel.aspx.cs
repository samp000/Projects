using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace LoginPage3
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
            GridView2.DataBind();
            LoadImages();
            if (!IsPostBack) {
                LoadImages();
            }

        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                updateUser();
                cleardata();
            }
            else
            {
                Response.Write("<script>alert('User is not exists Exists')</script>");
            }

        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkUserExists())
            {
                deleteUser();
                cleardata();
            }
            else
            {
                Response.Write("<script>alert('User is not exists Exists')</script>");
            }
        }

        //UserControl defined functions
        void updateUser()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE registrationTable SET username = @username, password = @password  WHERE username = '" + TextBox2.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Updated Successfully')</script>");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        bool checkUserExists()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from registrationTable where username='" + TextBox2.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {

                    return true;
                }
                else
                {

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
        void deleteUser() {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM registrationTable  WHERE username = '" + TextBox2.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@username", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox3.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('User Deleted  Successfully')</script>");
                GridView1.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        void cleardata() {

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        private void LoadImages() {

            using (SqlConnection con = new SqlConnection(strcon)) {

                SqlCommand cmd = new SqlCommand("Select * from GuardsInfoTable", con);
                con.Open();
                 SqlDataReader rdr =  cmd.ExecuteReader();
                GridView2.DataSource = rdr;
                GridView2.DataBind();
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;

            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".bmp" || fileExtension.ToLower() == ".jpeg" ||
                fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {

                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO GuardsInfoTable(name,image,adhar_no,phone_no,address,age,police_var,type) values " +
                        "(@name,@image,@adhar_no,@phone,@addr,@age,@police,@type)", con);
                    cmd.Parameters.AddWithValue("@name", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@adhar_no", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@addr", TextBox7.Text.Trim());
                    cmd.Parameters.AddWithValue("@age", TextBox8.Text.Trim());
                    cmd.Parameters.AddWithValue("@police", TextBox9.Text.Trim());
                    cmd.Parameters.AddWithValue("@type", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@image", bytes);

                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.Visible = true;
                lblMessage.Text = "upload success";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";

                Response.Write("<script>alert('Data Uploaded Susseccfully')</script>");
                
            }
            else {

                lblMessage.Visible = true;
                lblMessage.Text = "Only images can be upload";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

        }




    }
}