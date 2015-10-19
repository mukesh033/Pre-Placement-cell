<%@ Page Language="C#" AutoEventWireup="true" CodeFile="checkexam.aspx.cs" Inherits="checkexam" %>
<%@ Import Namespace="System.Data.SqlClient" %>

    <%
       
       string uid= Request.QueryString["userid"].ToString();
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
       string s1 = "select * from student_result where userid='" +uid+ "'";
       con.Open();
       SqlCommand cmd = new SqlCommand(s1, con);
       SqlDataReader dr = cmd.ExecuteReader();
       if (dr.Read())
       {
           Response.Write("ok");
       }
       else {
           Response.Write("no");
      }
         %> 


