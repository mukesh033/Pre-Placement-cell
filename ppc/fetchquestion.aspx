<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fetchquestion.aspx.cs" Inherits="fetchquestion" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <table border="1">
        <tr>
            <th>Slno</th>
            <th>Questio</th>
            <th>Option1</th>
            <th>Option2</th>
            <th>Option3</th>
            <th>Option4</th>
            <th>Answer</th>
        </tr>
       
   <%
       
       string qtype = Request.QueryString["questype"].ToString();
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["onlinetestConnectionString"].ConnectionString);
       string s1 = "select * from question_answer where lev='" + qtype + "'";
       con.Open();
       SqlCommand cmd = new SqlCommand(s1, con);
       SqlDataReader dr = cmd.ExecuteReader();
       int i = 0;
      while (dr.Read())
       {
           i++; 
          string ques = dr[2].ToString();
           string op1 = dr[3].ToString();
           string op2 = dr[4].ToString();
           string op3 = dr[5].ToString();
           string op4 = dr[6].ToString();
           string ans = dr[7].ToString();
         %> 


        
     <tr>
            <th><%=i %></th>
            <th><%=ques %></th>
            <th><%=op1 %></th>
            <th><%=op2 %></th>
            <th><%=op3 %></th>
            <th><%=op4 %></th>
            <th><%=ans %></th>
        </tr>

          <%
       }
      
       
        %>



    </table>


</body>
</html>
