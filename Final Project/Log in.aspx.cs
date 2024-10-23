using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Final_Project
{
	public partial class Log_in : System.Web.UI.Page
	{
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=signup;Integrated Security=True");
            conn.Open();
            conn.Close();
        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            if (email.Text.Equals("") && pass.Text.Equals(""))
            {
                Response.Write("<script>alert('please fill email and password')</script>");
                return;
            }
            string sqlselect;
            SqlCommand cmd;
            conn.Open();
            sqlselect = "select * from users where email=@uemail and upassword=@upass";
            cmd = new SqlCommand(sqlselect, conn);
            cmd.Parameters.AddWithValue("@uemail", email.Text);
            cmd.Parameters.AddWithValue("@upass", pass.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "users");
            conn.Close();
            if(email.Text.Equals("admin@gmail.com") && pass.Text.Equals("admin"))
            {
                Response.Redirect("admin.aspx");
            }
            if (ds.Tables["users"].Rows.Count == 0)
            {
                Response.Write("<script>alert('invalid user')</script>");
                Response.Write("<script>alert('make sure you write email and password correctly or sign up if you already not registerd')</script>");
            }
            else
            {
                Response.Write("<script>alert('Login Successfully,you can continue shopping')</script>");
                Response.Redirect("Home Page.aspx");
            }
        }
    }
}