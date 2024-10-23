using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Final_Project
{
	public partial class Sign_up : System.Web.UI.Page
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
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into users(id,uname,upassword,email) values(@id,@uname,@upass,@email)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@id", id.Text);
            cmd.Parameters.AddWithValue("@uname", username.Text);
            cmd.Parameters.AddWithValue("@upass", pass.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('User Registered Successfully')</script>");
            Response.Redirect("Log in.aspx");
        }
    }
}