using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class materials : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string branch = DropDownList1br.SelectedItem.ToString();
        string subject = DropDownList2sub.SelectedItem.ToString();
        string title = TextBoxtitle.Text;
        string filename = FileUpload1.FileName;
        
       

        string sql="insert into Material_details  values('"+branch+"','"+subject+"','"+filename+"','"+title+"')";
        SqlConnection con = new SqlConnection (System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
       
        SqlCommand cmd=new SqlCommand(sql,con);
        int i=cmd.ExecuteNonQuery();
        if(i>=0)
        {
            FileUpload1.SaveAs(Server.MapPath(@"~/materials/"+filename));
            Label1.Text = "file uploaded";
            Label1.Visible = true;
        }

        

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string branch = DropDownList1br.SelectedItem.ToString();
        string subject = DropDownList2sub.SelectedItem.ToString();
        string title = TextBoxtitle.Text;
        string filename = FileUpload1.FileName;



        string sql = "insert into Material_details  values('" + branch + "','" + subject + "','" + filename + "','" + title + "')";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand(sql, con);
        int i = cmd.ExecuteNonQuery();
        if (i >= 0)
        {
            FileUpload1.SaveAs(Server.MapPath(@"~/materials/" + filename));
            Label1.Text = "file uploaded";
            Label1.Visible = true;
        }

    }
}
    
