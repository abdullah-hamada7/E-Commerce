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
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=signup;Integrated Security=True");
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlselect = "SELECT * FROM users u join payment p on u.id=p.user_id";
            SqlDataAdapter da = new SqlDataAdapter(sqlselect, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sqldelete;
            SqlCommand cmd;
            sqldelete = "delete from users where uname=@name";
            cmd = new SqlCommand(sqldelete, conn);
            cmd.Parameters.AddWithValue("@name", deleted_user.Text);
            cmd.ExecuteNonQuery();
            deleted_user.Text = "";
            Response.Write("<script>alert('user deleted successfully')</script>");

            SqlCommand cm = new SqlCommand("select * from users", conn);
            SqlDataReader sdr = cm.ExecuteReader();
            GridView1.DataSource = sdr;
            GridView1.DataBind();

            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", Text1.Text);
            comm.Parameters.AddWithValue("@price", Text2.Text);
            comm.Parameters.AddWithValue("@desc", Text3.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added successfully')</script>");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string sqldelete;
            SqlCommand cmd;
            sqldelete = "delete from item where item_name=@name";
            cmd = new SqlCommand(sqldelete, conn);
            cmd.Parameters.AddWithValue("@name", Text1.Text);
            cmd.ExecuteNonQuery();
            Text1.Text = "";
            conn.Close();
            Response.Write("<script>alert('item deleted successfully')</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string sqlselect = "SELECT * FROM contactus";
            SqlDataAdapter da = new SqlDataAdapter(sqlselect, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            conn.Close();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string sqldelete;
            SqlCommand cmd;
            sqldelete = "delete from contactus where fname=@name";
            cmd = new SqlCommand(sqldelete, conn);
            cmd.Parameters.AddWithValue("@name", deleted_req.Text);
            cmd.ExecuteNonQuery();
            deleted_req.Text = "";

            string sqlselect = "SELECT * FROM contactus";
            SqlDataAdapter da = new SqlDataAdapter(sqlselect, conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

            conn.Close();
            Response.Write("<script>alert('request deleted successfully')</script>");
        }
    }
}