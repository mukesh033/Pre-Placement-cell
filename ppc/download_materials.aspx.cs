using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class download_materials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from material_details where branch='" + DropDownList1br.SelectedItem.ToString() + "' and subject='" + DropDownList2sub.SelectedItem.ToString() + "'";
        SqlConnection con = new SqlConnection("server=(localdb)\\v11.0;database=placement_db;Integrated security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       HyperLink1.NavigateUrl ="materials/"+ GridView1.SelectedRow.Cells[4].Text;
       HyperLink1.Target = "blank";
        HyperLink1.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //string sql = "select * from material_details where branch='" + DropDownList1br.SelectedItem.ToString() + "' and subject='" + DropDownList2sub.SelectedItem.ToString() + "'";
        //SqlConnection con = new SqlConnection("server=(localdb)\\v11.0;database=placement_db;Integrated security=true");
        //con.Open();
        //SqlCommand cmd = new SqlCommand(sql, con);
        //GridView1.DataSource = cmd.ExecuteReader();
        //GridView1.DataBind();
    }


}