using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user_id = TextBox1_user.Text;
        string password = TextBox1pass.Text;
        string sql = "select * from admin_master where user_id='" + user_id + "' and password='" + password + "'";
        SqlConnection con = new SqlConnection("server=(localdb)\\v11.0;database=placement_db;Integrated security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["auser_id"] = TextBox1_user.Text;
          
            Response.Redirect("admin_home.aspx");


        }
        else
        {

            Label1.Text = "Invalid user_id or password !!";
            Label1.Visible = true;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string user_id = TextBox1_user.Text;
        string password = TextBox1pass.Text;
        string sql = "select * from admin_master where user_id='" + user_id + "' and password='" + password + "'";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["auser_id"] = TextBox1_user.Text;

            Response.Redirect("admin_home.aspx");


        }
        else
        {

            Label1.Text = "Invalid user_id or password !!";
            Label1.Visible = true;
        }
    }
}