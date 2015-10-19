using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class changepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
       

     }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("update registration set password='" + TextBox2npwd.Text + "' where user_id='" + Session["user_id"].ToString() + "'and password='" + TextBox1opwd.Text + "'", con);
        int i = cmd.ExecuteNonQuery();
        if (i >= 0)
        {
            Labelmsg.Text = "Password changed successfully!";
            Labelmsg.Visible = true;
        }
    }
}