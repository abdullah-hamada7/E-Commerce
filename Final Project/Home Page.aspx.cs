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
    public partial class Home_Page : System.Web.UI.Page
	{
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
		{
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=buy;Integrated Security=True");
            conn.Open();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label1.Text);
            cmd.Parameters.AddWithValue("@price",Label199.Text);
            cmd.Parameters.AddWithValue("@description",Label2.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_airpods_Click(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", label.Text);
            cmd.Parameters.AddWithValue("@price", 352432);
            cmd.Parameters.AddWithValue("@description","Airpods");
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_laptop1_Click(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label4.Text);
            cmd.Parameters.AddWithValue("@price", 213312);
            cmd.Parameters.AddWithValue("@description", Label5.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_laptop2_Click(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label6.Text);
            cmd.Parameters.AddWithValue("@price", 124214);
            cmd.Parameters.AddWithValue("@description", Label7.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_laptop3_Click(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label9.Text);
            cmd.Parameters.AddWithValue("@price", 19999);
            cmd.Parameters.AddWithValue("@description", Label8.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_phone4(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label11.Text);
            cmd.Parameters.AddWithValue("@price", Label20.Text);
            cmd.Parameters.AddWithValue("@description", Label10.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_phone5(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label12.Text);
            cmd.Parameters.AddWithValue("@price", Label21.Text);
            cmd.Parameters.AddWithValue("@description", Label13.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_phone6(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label14.Text);
            cmd.Parameters.AddWithValue("@price", Label22.Text);
            cmd.Parameters.AddWithValue("@description", Label15.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_phone3(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label16.Text);
            cmd.Parameters.AddWithValue("@price", Label23.Text);
            cmd.Parameters.AddWithValue("@description", Label17.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy_phone2(object sender, EventArgs e)
        {
            string sqlinsert;
            SqlCommand cmd;
            conn.Open();
            sqlinsert = "insert into item (item_name,item_price,item_description) values(@name,@price,@description)";
            cmd = new SqlCommand(sqlinsert, conn);
            cmd.Parameters.AddWithValue("@name", Label18.Text);
            cmd.Parameters.AddWithValue("@price", Label24.Text);
            cmd.Parameters.AddWithValue("@description", Label199.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }
    }
}