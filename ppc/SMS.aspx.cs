using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;

using System.IO;
public partial class SMS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string rno = TextBox3.Text;
        string msg = TextBox4.Text;
        string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=princy4.cool@gmail.com:warsha&senderID=TEST SMS&receipientno="+rno+"&msgtxt="+msg+"&state=4";
        WebRequest request = HttpWebRequest.Create(strUrl);
        HttpWebResponse response = (HttpWebResponse)request.GetResponse();
        Stream s = (Stream)response.GetResponseStream();
        StreamReader readStream = new StreamReader(s);
        string dataString = readStream.ReadToEnd();
        response.Close();
        s.Close();
        readStream.Close();
        Response.Write("Message Send Successfully");
       

    }
    
}