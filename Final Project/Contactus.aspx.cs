using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Final_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=buy;Integrated Security=True");
            conn.Open();
        }

        protected void button_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=signup;Integrated Security=True");
            conn.Open();


            SqlCommand comm = new SqlCommand("insert into contactus values(@fname,@lname,@email,@mobile,@message)", conn);
            comm.Parameters.AddWithValue("@fname", firstname.Text);
            comm.Parameters.AddWithValue("@lname", lastName.Text);
            comm.Parameters.AddWithValue("@email", email.Text);
            comm.Parameters.AddWithValue("@mobile", message.Text);
            comm.Parameters.AddWithValue("@message", mobile.Text);
            firstname.Text = "";
            lastName.Text = "";
            email.Text = "";
            message.Text = "";
            mobile.Text = "";

            comm.ExecuteNonQuery();
            conn.Close();

            Response.Write("<script>setTimeout(function(){ alert('Thank you for Contacting us'); }, 1000);</script>");
        }
    }
}