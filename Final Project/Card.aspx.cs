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
	public partial class Card : System.Web.UI.Page
	{
        SqlConnection conn;

		protected void Page_Load(object sender, EventArgs e)
		{
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=buy;Integrated Security=True");
            conn.Open();
            SqlCommand cm = new SqlCommand("select item_name as NAME,item_price as PRICE from item", conn);
            SqlDataReader sdr = cm.ExecuteReader();
            table.DataSource = sdr;
            table.DataBind();

            sdr.Close();

            SqlCommand sumcmd = new SqlCommand("SELECT SUM(item_price) FROM item", conn);
            object result = sumcmd.ExecuteScalar();
            int itemSum = result == DBNull.Value ? 0 : Convert.ToInt32(result);

            string labelValue = itemSum.ToString()+" EGP";
            Label2.Text = labelValue;

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM item WHERE item_name = @name", conn);
            checkCmd.Parameters.AddWithValue("@name", deleted_item.Text);
            int itemCount = (int)checkCmd.ExecuteScalar();

            if (itemCount > 0)
            {
                if (deleted_item.Text != "")
                {
                    string sqldelete;
                    SqlCommand cmd;
                    sqldelete = "delete from item where item_name=@name";
                    cmd = new SqlCommand(sqldelete, conn);
                    cmd.Parameters.AddWithValue("@name", deleted_item.Text);
                    cmd.ExecuteNonQuery();
                    deleted_item.Text = "";
                    Response.Write("<script>alert('item deleted successfully')</script>");

                    SqlCommand cm = new SqlCommand("select item_name as NAME,item_price as PRICE from item", conn);
                    SqlDataReader sdr = cm.ExecuteReader();
                    table.DataSource = sdr;
                    table.DataBind();

                    conn.Close();
                }
                else
                {
                    deleted_item.Text = "";
                    Response.Write("<script>alert('fill the textbox to delete the element')</script>");
                }
            }
            else
            {
                deleted_item.Text = "";
                Response.Write("<script>alert('Item already deleted or does not exist')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home Page.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("payment.aspx");
        }
    }
}