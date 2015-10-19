<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master" AutoEventWireup="true" CodeFile="viewresult.aspx.cs" Inherits="viewresult" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="auto-style14">
    RESULT
</h1>
   


    <div class="row">
        <div class="col-sm-12 body">

            <%
       
       
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
       string s1 = "select  * from student_result where userid='"+Session["user_id"].ToString()+"'";
       con.Open();
       SqlCommand cmd = new SqlCommand(s1, con);
       SqlDataReader dr = cmd.ExecuteReader();
      
     if (dr.Read())
       {
          
           string total_question= dr[2].ToString();
          string attempted_question= dr[3].ToString();
          string non_attempted_question = dr[4].ToString();
          string totalresult= dr[5].ToString();
          string dateofexam= dr[6].ToString();
          string answerattempted = dr[7].ToString();
          string questionattempted = dr[8].ToString();
          string nocorrectans = dr[9].ToString();
          string noincorrectans = dr[10].ToString();
          string []quesids = questionattempted.Split(',');
          string [] answers = answerattempted.Split(',');
         %>

            <table border="1" width="100%">
                <tr>
                    <td>Total Question: <%=total_question %></td>
                     <td>No Of Attempted Question: <%=attempted_question %></td>
                     <td>No Of Non Attempted Question: <%=non_attempted_question%></td>

                    <td>Date Of Exam: <%=dateofexam%></td>
                </tr>
                 <tr>
                    
                     <td colspan="2">No Of Correct Answer: <%=nocorrectans%></td>
                     <td colspan="2">No Of Wrong Answer: <%=noincorrectans%></td>

                    
                </tr>
            </table>
           
            <br />


    <%
           dr.Close(); 
           for (int k = 1; k <= 20;k++ )
           {
              
               string s = "select * from question_answer where Id='"+quesids[k]+"'";

               SqlCommand cmd1 = new SqlCommand(s, con);
               SqlDataReader dr1 = cmd1.ExecuteReader();

               if (dr1.Read())
               {
                   
                   
                   string ques = dr1[2].ToString();
                   string op1 = dr1[3].ToString();
                   string op2 = dr1[4].ToString();
                   string op3 = dr1[5].ToString();
                   string op4 = dr1[6].ToString();
                   string ans = dr1[7].ToString();

                  
         %> 

<div class="well quesdiv" style="display:block">
         <div class="qdiv"><p><%=k%>.<%=ques%></p>
                <ol class="options" style="list-style:decimal">
                   <li>1. <%=op1%></li>
                    <li>2. <%=op2%></li>
                    <li>3.  <%=op3%></li>
                    <li>4. <%=op4%></li>
                </ol>
             <p>Correct Answer:<%=ans %>        Your Answer: <%=answers[k] %></p>

            </div>
</div>
          <%
                   dr1.Close();
               }
              

           }
        
        
          
       }
      
       
        %>

           
          
        </div>
</div>


</asp:Content>

