using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Project
{
    public partial class More_phones : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=buy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buy1(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", label1.Text);
            comm.Parameters.AddWithValue("@price", label2.Text);
            comm.Parameters.AddWithValue("@desc", label3.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");
        }

        protected void buy2(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", label4.Text);
            comm.Parameters.AddWithValue("@price", label5.Text);
            comm.Parameters.AddWithValue("@desc", label6.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy3(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", label7.Text);
            comm.Parameters.AddWithValue("@price", label8.Text);
            comm.Parameters.AddWithValue("@desc", label9.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy4(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", label10.Text);
            comm.Parameters.AddWithValue("@price", label1.Text);
            comm.Parameters.AddWithValue("@desc", label12.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy5(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", label13.Text);
            comm.Parameters.AddWithValue("@price", label14.Text);
            comm.Parameters.AddWithValue("@desc", label15.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }

        protected void buy6(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand comm = new SqlCommand("insert into item(item_name,item_description,item_price) values(@name,@desc,@price)", conn);
            comm.Parameters.AddWithValue("@name", label16.Text);
            comm.Parameters.AddWithValue("@price", label7.Text);
            comm.Parameters.AddWithValue("@desc", label18.Text);
            comm.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Item added to cart successfully')</script>");

        }
    }
}