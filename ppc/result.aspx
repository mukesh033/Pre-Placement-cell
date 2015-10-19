<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
    
                        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                        <link href="Bootstrap/css/dot.css" rel="stylesheet" />
   
   
    <title></title>
    <script src="js/JQuery.js"></script>
    <script src="js/myscript.js"></script>
</head>

<body>
    <div class="container">
     <div class="row">
        <div class="col-sm-12 head">
             <h1 class="text-center">ONLINE  C  EXAM</h1>
        </div>

    </div>
    
    <div>

   <div class="row">
        <div class="col-sm-3 body2"></div>
        <div class="col-sm-6 body1">
      
                <h3>Your have </h3>
             
            <%
                string summary = Request.QueryString["summary"].ToString();
                string[] sarr = summary.Split('$');
                 %>

             <table>
                 <tr><td>Total Question =</td><td><%=sarr[0] %></td></tr>
                 <tr><td>Attempted =</td><td><%=sarr[1] %></td></tr>
                <tr><td>Un_Attempted =</td><td><%=sarr[2] %></td></tr>
            
                 </table>
            <input type="button" value="close" onclick="terminate()"/>
       </div>
         
        <div class="col-sm-3 body2"></div>
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
