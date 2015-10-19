using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPagestudent : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null && Session["name"]==null)
        {
            Response.Redirect("Default.aspx");
        }
        else if(Session["user_id"].ToString()=="")
        {
            Response.Redirect("Default.aspx");
        }
    }
}
