<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="exam" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
    
                        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                        <link href="Bootstrap/css/dot.css" rel="stylesheet" />
   
   
    <title></title>
    <script src="js/JQuery.js" type="text/javascript"></script>
    <script src="js/myscript.js" type="text/javascript"></script>
    <script type="text/javascript">

        var sec = 00;   // set the seconds
        var min = 15;   // set the minutes

        function countDown() {
            sec--;
            if (sec == -01) {
                sec = 60;
                min = min - 1; }
            else {
                min = min; }

            if (sec<=9) { sec = "0" + sec; }

            time = (min<=9 ? "0" + min : min) + " m : " + sec + " s ";

            if (document.getElementById) { document.getElementById('thetime').innerHTML = time; }

            SD=window.setTimeout("countDown();", 1000);
            if (min == '00' && sec == '01') 
            {
                alert("Time Out");
	
                $("#ques_submit").click();

            }
        }
        window.onload = countDown;

</script>
    <script type="text/javascript">
        function disableRightClick() {
            alert("Sorry, Right Click is not allowed !!");
            return false;
        }
    </script>
    <script type="text/javascript">
        document.onkeydown=function(e)
        {
            return false;
        }
    </script>
</head>
<body oncontextmenu="return disableRightClick();">
<div class="container">
     <div class="row">
        <div class="col-sm-12 head">
             <h1 class="text-center">ONLINE  C  EXAM</h1>
        </div>

    </div>


    <div class="row">
        <div class="col-sm-9 body">

            <%
       
       
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
       string s1 = "select top 20 * from question_answer ORDER BY NEWID()";
       con.Open();
       SqlCommand cmd = new SqlCommand(s1, con);
       SqlDataReader dr = cmd.ExecuteReader();
       int i = 0;
      while (dr.Read())
       {
           i++;
           string quesid= dr[0].ToString();
          string ques = dr[2].ToString();
           string op1 = dr[3].ToString();
           string op2 = dr[4].ToString();
           string op3 = dr[5].ToString();
           string op4 = dr[6].ToString();
           string ans = dr[7].ToString();
           string dis = "" ;
           if (i == 1)
           {
               dis = "style='display:block'";
           }
           else {
               dis = "style='display:none'";
           }
         %> 

<div class="well quesdiv" id="quesdiv<%=i %>" <%=dis%>>
         <div class="qdiv"><p><%=i %>.<%=ques %></p>
                <ul class="options">
                   <li> <input type="radio" value="Option1" id="q1<%=i %>" name="q<%=i %>" /><%=op1 %></li>
                    <li> <input type="radio" value="Option2" id="q2<%=i %>" name="q<%=i %>"  /><%=op2 %></li>
                    <li> <input type="radio" value="Option3" id="q3<%=i %>" name="q<%=i %>"  /><%=op3 %></li>
                    <li> <input type="radio" value="Option4" id="q4<%=i %>" name="q<%=i %>"  /><%=op4 %></li>
                </ul>
            </div>
         <div class="qnext">
             <input type="hidden" id="ans<%=i %>" value="<%=ans %>"/>
              <input type="hidden" id="quesid<%=i %>" value="<%=quesid %>"/>
                <input type="button" value="next" class="pull-right nextbtn" data-id="<%=i %>" />
            </div>
</div>
          <%
       }
      
       
        %>

           
          
        </div>
        <div class="col-sm-3 bodyright">
                <div><span id="thetime"></span></div>
             <h3>question Pallete</h3>
            <table style="display:none"><tr>
                    <td><input type="button" value="1" class="qbtm"  /></td>
                    <td><input type="button" value="2" class="qbtm" /></td>
                    <td><input type="button" value="3" class="qbtm" /></td>
                  
                   </tr>
                    <tr>    
                        <td><input type="button" value="4 " class="qbtm" /></td>
                        <td><input type="button" value="5 " class="qbtm" /></td>
                        <td><input type="button" value="6 " class="qbtm" /></td>
                                                                       

                   </tr>
                    <tr>
                        <td><input type="button" value="7 " class="qbtm" /></td>
                        <td><input type="button" value="8 " class="qbtm" /></td>
                        <td><input type="button" value="9 " class="qbtm" /></td>
                           

                    </tr>
                <tr>
                    <td><input type="button" value="10" class="qbtm" /></td>
                    <td>&nbsp;</td>
                    <td></td>

                </tr>
                  
            </table><br />

            <div>
                  <input type="button" id="ques_submit" value="Submit" />
        </div>
              
              </div>
    </div>


    <div class="row">
        <div class="col-sm-12 head">
             <p class="text-center">NMIET</p>
        </div>

    </div>

</div>
</body>
</html>
