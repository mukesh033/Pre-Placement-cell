<%@ Page Language="C#" AutoEventWireup="true" CodeFile="saveresult.aspx.cs" Inherits="saveresult" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>



         <%
       string userid= Session["user_id"].ToString();
       string totalques=Request.QueryString["totalques"].ToString();
       string atmptq=Request.QueryString["atmptq"].ToString();
       string noatmptq=Request.QueryString["noatmptq"].ToString();
       string totalresult=Request.QueryString["totalresult"].ToString();
       string questionid = Request.QueryString["questionid"].ToString();
       string answerattempt = Request.QueryString["answerattempt"].ToString();

       string nocorrect= Request.QueryString["nocorrect"].ToString();
       string noincorrect = Request.QueryString["noincorrect"].ToString();
       string dt = DateTime.Now.ToShortDateString();

       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
             SqlDataAdapter adp = new SqlDataAdapter("insert into student_result  values('" +userid+ "','" + totalques + "','" +atmptq + "','" + noatmptq + "','" +totalresult+"','"+dt+"','"+answerattempt+"','"+questionid+"','"+nocorrect+"','"+noincorrect+"')", con);
             DataSet ds = new DataSet();
             adp.Fill(ds);
            Response.Write("Success");
       
        %>

</body>
    </html>