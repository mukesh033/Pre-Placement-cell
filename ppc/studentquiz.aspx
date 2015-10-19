<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master"  AutoEventWireup="true" CodeFile="studentquiz.aspx.cs" Inherits="studentquiz" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript">
        $("input.ansradio").live('click', function () {
            
            var id = $(this).attr('id');
            $("#topdiv"+id).show();
        });
    </script>
    <style type="text/css">
        .questiondiv {
            height:140px;
            width:100%;
            background-color:#fff;
            border:1px solid #ff6a00;
        }
        .auto-style7 {
            width: 307px;
        }
        .auto-style8 {
            color: #00FF00;
        }
        .auto-style9 {
            width: 307px;
            font-weight: bold;
            color: #800000;
            font-size: medium;
        }
        .auto-style10 {
            font-size: medium;
        }
        .auto-style11 {
            color: #FFFFFF;
        }
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
            color:blueviolet;

        }
        .topdiv1 {
            width:100%;
            height:auto;
            font-size:20px;
            color:black;
        }
        .topdiv2 {
            width:100%;
            height:auto;
            font-size:20px;
            color:black;
        }
        .topdiv3 {
            width:100%;
            height:auto;
            font-size:20px;
            color:black;
        }
        .auto-style12 {
            color: #000080;
            font-size: large;
            font-family: "Baskerville Old Face";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="auto-style10"><strong class="auto-style12">Choose your subject :</strong></span>&nbsp;
 

        <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            
        </asp:DropDownList>
       
</p>
    
    <script runat="server">
        public static int i = 0;
       public static SqlDataReader dr;
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //FillPage();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from ques_ans where subject='" + DropDownList1.SelectedItem.ToString() + "'", con);
            dr = cmd.ExecuteReader();
            
                i = 1;
           
           
        }
    
    </script>

   

     
    <%
        if(i==1)
        {
            int k = 0;
            Response.Write(@"<div class='topdiv'><h1>'" + DropDownList1.SelectedItem.ToString() + "' Question & Answer</h1></div>");
            while (dr.Read())
            {
                k++;
                Response.Write(@" 
    <div class='questiondiv'><div class='topdiv" + k + "'><p>Q:" + k + " " + dr[2].ToString() + "</p> </div> <div class='topdiv2'><table width='100%' style='width:100%'><tr><td>A. <input type='radio' name='r" + k + "' value='" + dr[3].ToString() + "' class='ansradio' id='" + k + "'/>" + dr[3].ToString() + "</td><td>B. <input type='radio' name='r" + k + "' value='" + dr[4].ToString() + "' class='ansradio' id='" + k + "' />" + dr[4].ToString() + "</td></tr><tr><td>C. <input type='radio' name='r" + k + "' class='ansradio' id='" + k + "' value='" + dr[5].ToString() + "' />" + dr[5].ToString() + "</td><td>D. <input type='radio' id='" + k + "' name='r" + k + "' value='" + dr[6].ToString() + "' class='ansradio' />" + dr[6].ToString() + "</td></tr></table></div><div class='topdiv3' id='topdiv" + k + "' style='display:none'><h3>Answer is " + dr[7].ToString() + "</h3></div></div>");
                Response.Write("<br>");
            }
        }
        
        
        
         %>

   
    
   

</asp:Content>

