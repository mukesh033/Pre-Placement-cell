using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();

       // Session["user_id"] ="";
        Session.Remove("user_id");
        Session.Remove("name");
        Response.Redirect("Default.aspx");
        
    }
}