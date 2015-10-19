using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
     string notice=TextBox1.Text;
     string date_of_notice = DateTime.Now.ToString();




     string sql = "insert into notice values('" + notice + "','"+date_of_notice+"')";
     SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
     con.Open();

     SqlCommand cmd = new SqlCommand(sql, con);
     int i = cmd.ExecuteNonQuery();
     if (i > 0)
     {
         
         Response.Redirect("notice.aspx");
     }

      
           


    }
}