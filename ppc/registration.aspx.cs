using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string name = TextBox5first.Text;
        string user_id = TextBox1uid.Text;
        string password = TextBox2password.Text;
        string dob = TextBox1dob.Text;
        
        string mobile_no = TextBox7mobile.Text;
        string email_id = TextBox8email.Text;
        string sequrity_question = DropDownList1sq.SelectedItem.ToString();
        string answer = TextBox4ans.Text;
        string imagen = name + ".jpg";
        string Registration_no = TextBox1reg.Text;
        string college = TextBox1col.Text;
        string Ten_marks= TextBox110th.Text;
        string Twevel_marks =TextBox12th.Text;
        string branch=TextBox1branch.Text;
        string address=TextBox1ads.Text;
        string last_name = TextBox1last.Text;
        string msg = " Registration Successfully..!! WelCome to NMIET Pre-Palcement Cell.. Your Registration userid" + user_id + " pasword " + password;

        string sql = "insert into Registration values('" + name + "','" + user_id + "','" + password + "','" + dob + "','" + mobile_no + "','" + email_id + "','" + sequrity_question + "','" + answer + "','" + imagen + "','" + Registration_no + "','" + college + "','" + Ten_marks + "','" + Twevel_marks + "','" + branch + "','" + address + "','" + last_name + "')";
        SqlConnection con = new SqlConnection (System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
        con.Open();
       
        SqlCommand cmd=new SqlCommand(sql,con);
        int i=cmd.ExecuteNonQuery();
        if(i>0)
        {
            FileUpload1.SaveAs(Server.MapPath(@"~/studentimage/" + imagen));

            //SMS code
            string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=princy4.cool@gmail.com:warsha&senderID=TEST SMS&receipientno=" + mobile_no + "&msgtxt=" + msg + "&state=4";
            WebRequest request = HttpWebRequest.Create(strUrl);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            Stream s = (Stream)response.GetResponseStream();
            StreamReader readStream = new StreamReader(s);
            string dataString = readStream.ReadToEnd();
            response.Close();
            s.Close();
            readStream.Close();
            Response.Write("Message Send Successfully");

            // Mailing code

             var smssender ="rashmikumari3092@gmail.com";
        var pass = "Rashmi@123";
        var to= email_id;
        var sub = "Registration Successfully..!!!";
        var getserver1 = smssender.Substring(smssender.IndexOf('@') + 1, smssender.Length - smssender.IndexOf('@') - 1);
        var getserver = "smtp." + getserver1;
        MailMessage mail = new MailMessage();
        
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(smssender);
            mail.To.Add(to);
            mail.Subject = sub;
            mail.Body = msg;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(smssender, pass);
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            
       
            Response.Redirect("reg.succ.aspx");
        }

      
           


    }
   
}