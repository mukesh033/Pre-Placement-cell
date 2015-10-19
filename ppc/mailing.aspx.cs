using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class mailing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void button_Click(object sender, EventArgs e)
    {
        var smssender ="rashmikumari3092@gmail.com";
        var pass = "Rashmi@123";
        var msg = TextBox5.Text;
        var to = TextBox4.Text;
        var sub = TextBox3.Text;
        var getserver1 = smssender.Substring(smssender.IndexOf('@') + 1, smssender.Length - smssender.IndexOf('@') - 1);
        var getserver = "smtp." + getserver1;
        MailMessage mail = new MailMessage();
        if (getserver1.Equals("gmail.com"))
        {
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
            mail.From = new MailAddress(smssender);
            mail.To.Add(to);
            mail.Subject = sub;
            mail.Body = msg;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential(smssender, pass);
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            Response.Write("<script>" + "alert('Email send sucessfully')" + "</script>");

        }
       
        else
        {
            Response.Write("<script>" + "alert('There is an error to send an email')" + "</script>");
        }
        }


    }
