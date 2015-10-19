using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        
            string user_id = TextBox1.Text;
            string password = TextBox2.Text;
            string sql = "select * from registration where user_id='" + user_id + "' and password='" + password + "'";
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["user_id"] = TextBox1.Text;
                Session["name"] = dr[0].ToString();
                Response.Redirect("student_home.aspx");


            }
            else
            {

                Label1.Text = "Invalid user_id or password !!";
                Label1.Visible = true;
            }
        
    }
}