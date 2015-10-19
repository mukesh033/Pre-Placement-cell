using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class studentprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string sql = "select * from Registration where user_id='" + Session["user_id"].ToString()+ "'";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           Image1.ImageUrl="studentimage/"+dr[8].ToString();
        }
        dr.Close();
        con.Close();

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}