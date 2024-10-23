using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Final_Project
{
    public partial class payment : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlConnection conn2;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=buy;Integrated Security=True");
            conn.Open();

            SqlCommand sumcmd = new SqlCommand("SELECT SUM(item_price) FROM item", conn);
            object result = sumcmd.ExecuteScalar();
            int itemSum = result == DBNull.Value ? 0 : Convert.ToInt32(result);

            string labelValue = itemSum.ToString() + " EGP";
            Label1.Text = labelValue;

            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                conn2 = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=signup;Integrated Security=True");
                conn2.Open();
                if (Label1.Text != "0 EGP")
                {



                    string gender = male.Checked ? "Male" : "Female";


                    SqlCommand comm = new SqlCommand("insert into payment(user_id,gender,address,email,pincode,cardnumber,expiration_date,cvv,total) values(@user_id,@gen,@add,@em,@pin,@no,@date,@cvv,@total)", conn2);
                    comm.Parameters.AddWithValue("@user_id", TextBox1.Text);
                    comm.Parameters.AddWithValue("@gen", gender);
                    comm.Parameters.AddWithValue("@add", address.Text);
                    comm.Parameters.AddWithValue("@em", email.Text);
                    comm.Parameters.AddWithValue("@pin", pincode.Text);
                    comm.Parameters.AddWithValue("@no", card_number.Text);
                    comm.Parameters.AddWithValue("@date", exp_date.Text);
                    comm.Parameters.AddWithValue("@cvv", textbox.Text);
                    comm.Parameters.AddWithValue("@total", Label1.Text);

                    comm.ExecuteNonQuery();
                    Response.Write("<script>alert('Wait Payment is processing')</script>");
                    Response.Write("<script>setTimeout(function(){ alert('Done,Thank you for visiting us'); }, 1000);</script>");

                    conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=buy;Integrated Security=True");
                    conn.Open();

                    string sqldelete;
                    SqlCommand cmd;
                    sqldelete = "delete from item";
                    cmd = new SqlCommand(sqldelete, conn);
                    cmd.ExecuteNonQuery();

                    conn.Close();
                }
                else
                {
                    Response.Write("<script>alert('Error: Payment amount cannot be 0.')</script>");

                }
            }

            catch (SqlException ex)
            {
                if (ex.Number == 547)
                {
                    Response.Write("<script>alert('Error: User ID not found.')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Foregin Key Error')</script>");
                }
            }
            finally
            {
                conn2.Close();

            }
        }

    }
}