using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class forgotpwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user_id = TextBox1UID.Text;
        string sequrity_question = DropDownList1sq.SelectedItem.ToString();
        string answer = TextBox3ANS.Text;
        string sql = "select * from Registration where user_id='" + TextBox1UID.Text + "'and security_question='" +DropDownList1sq.SelectedItem.ToString() + "'and answer='" + TextBox3ANS.Text + "'";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[2].ToString();
            Label2.Visible = true;
        }




        else
        {
            Label2.Text = "invalid user_id and password";
            Label2.Visible = true;
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string user_id = TextBox1UID.Text;
        string sequrity_question = DropDownList1sq.SelectedItem.ToString();
        string answer = TextBox3ANS.Text;
        string sql = "select * from Registration where user_id='" + TextBox1UID.Text + "'and security_question='" + DropDownList1sq.SelectedItem.ToString() + "'and answer='" + TextBox3ANS.Text + "'";
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr[2].ToString();
            Label2.Visible = true;
        }




        else
        {
            Label2.Text = "invalid user_id and password";
            Label2.Visible = true;
        }
    }
}
