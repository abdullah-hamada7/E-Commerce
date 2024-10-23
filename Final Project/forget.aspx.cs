using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Project
{
    public partial class forget : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-U8BIRJS\SQLEXPRESS;Initial Catalog=employee;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string newfirstname = TextBox4.Text;
            string newlastname = TextBox5.Text;
            string email = TextBox6.Text;
            if (email != "" && newfirstname != "" && newlastname != "")
            {
                SqlCommand comm = new SqlCommand("update employee set firstname=@newfirstname,lastname=@newlastname where email=@email", conn);
                comm.Parameters.AddWithValue("@newfirstname", newfirstname);
                comm.Parameters.AddWithValue("@newlastname", newlastname);
                comm.Parameters.AddWithValue("@email", email);
                comm.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('FirstName & LastName Changed Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('fill the blank')</script>");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string oldpass = TextBox1.Text;
            string newpass = TextBox2.Text;
            string newpass2 = TextBox3.Text;
            string email = TextBox6.Text;

            if (email != "" && oldpass != "" && newpass != "")
            {
                SqlCommand comm2 = new SqlCommand("SELECT COUNT(*) FROM employee WHERE password = @oldpass AND email = @email", conn);
                comm2.Parameters.AddWithValue("@oldpass", oldpass);
                comm2.Parameters.AddWithValue("@email", email);

                int passwordMatchCount = (int)comm2.ExecuteScalar();

                if (passwordMatchCount > 0 && newpass == newpass2)
                {
                    SqlCommand comm = new SqlCommand("UPDATE employee SET password = @newpass WHERE email = @email", conn);
                    comm.Parameters.AddWithValue("@newpass", newpass);
                    comm.Parameters.AddWithValue("@email", email);
                    comm.ExecuteNonQuery();
                    conn.Close();
                    Response.Write("<script>alert('Password Changed Successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Old password does not match or new passwords do not match')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('fill the blank fields')</script>");

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Log in.aspx");
        }
    }
}