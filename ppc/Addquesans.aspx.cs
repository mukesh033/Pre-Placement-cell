using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Addquesans : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string subject = DropDownList1sub.SelectedItem.ToString();
        string ques = TextBox1ques.Text;
        string option1=TextBox3op1.Text;
        string option2 = TextBox2op2.Text;
        string option3 = TextBox2op3.Text;
        string option4 = TextBox2op4.Text;
        string answer = DropDownList2ans.SelectedItem.ToString();
         string sql = "insert into ques_ans values('" + subject + "','"+ques+"','" + option1 + "','" + option2 + "','" + option3+ "','" + option4 + "','" + answer + "')";
        SqlConnection con = new SqlConnection (System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
       
        SqlCommand cmd=new SqlCommand(sql,con);
        int i=cmd.ExecuteNonQuery();
        if (i > 0)
        {
             
        }
    }
}