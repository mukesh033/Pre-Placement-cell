<%@ Page Language="C#" AutoEventWireup="true" CodeFile="trial.aspx.cs" Inherits="trial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0066FF;
            font-size: large;
        }
        .newStyle1 {
            font-size: x-large;
        }
        .auto-style3 {
            color: #800000;
            font-weight: bold;
            font-size: large;
        }
        .auto-style4 {
            color: #800000;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border:solid;height:300px;width:100%">
        <br />

    
        <br />
        <br />
        
        <div class="question">

            <table>
                <tr>
                    <td>
                        <span class="auto-style1"><strong>Question</strong></span>
                    </td>
                    

                </tr>
                <tr>
                 <td class="auto-style4">   <span class="auto-style3">A:  </span>  <input type="radio" class="auto-style3" /><span class="auto-style3">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        B:  </span>  <input type="radio" class="auto-style3" /><span class="auto-style3">
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>mukesh</asp:ListItem>
                         <asp:ListItem>mohan</asp:ListItem>
                     </asp:DropDownList>
                     </span> </td>
                </tr>
                <tr>
                <td class="auto-style4">   <span class="auto-style3">C:  </span>  <input type="radio" class="auto-style3" /><span class="auto-style3">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        D:  </span>  <input type="radio" class="auto-style3" /><span class="auto-style3">
                    <br />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />

                          
                    <br />
                    <br />
                    <br />
                    

                        <input type="date">  
                    </span> </td>

                   
                </tr>
                <tr>
                    <td> <input type="button"  value="Answer"/></td>
                </tr>

            </table>

        </div>

        <div>

            <a href="SMS.aspx">kanchan</a>
        </div>
    </form>


    <style type="text/css">
        .questiondiv{
            height:auto;
            width:80%;
            margin:auto;
            background-color:#fff;
            border:thin #800000 solid;
            padding:1%;
        }
        .topdiv {
            width:100%;
            text-align:center;
            height:auto;
        }
        .topdiv1 {
            width:100%;
            height:auto;
        }
        .topdiv2 {
            width:100%;
            height:auto;
        }
        .topdiv3 {
            width:100%;
            height:auto;
        }
    </style>

      <div class="topdiv">
            <h1>C Question & Answer</h1>
        
        </div>
    <div class="questiondiv">


      
        <div class="topdiv1">
            <p>Q1: What is .NET?</p>
        </div>

        <div class="topdiv2">
            <table>
                <tr><td>A. <input type="radio" name="r1" value="s" />S</td><td>B. <input type="radio" name="r1" value="X" />X</td></tr>
                <tr><td>C. <input type="radio" name="r1" value="G" />H</td><td>D. <input type="radio" name="r1" value="G" />G</td></tr>
            </table>
        </div>
        <div class="topdiv3">
            <h3>Answer is B</h3>
        </div>

    </div>




</body>
</html>
