<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />

    

    <style type="text/css">
        .auto-style31 {
            font-family: "Tekton Pro Cond";
            font-size: xx-large;
            color: #00FFFF;
            font-weight: bold;
            
        }
        .auto-style41 {
            font-family: "Tekton Pro Cond";
            font-weight: bold;
            font-size: x-large;
            color: #00FFFF;
            text-decoration: underline;
        }
        .auto-style71 {
            color: #000080;
            font-family: "Times New Roman";
        }

        .auto-style81 {
             width: 256px;
            font-family: "Times New Roman";
            font-size: large;
        }
        .auto-style8 {
            font-family: Rockwell;
            font-size: medium;
            color: #FFFFFF;
        }
        .auto-style91 {
            font-family: Arial;
            font-size: x-large;
            color: #000080;
            font-weight: bold;
        }
        .newStyle1 {
            font-family: "Times New Roman", Times, serif;
        }
        .newStyle2 {
            font-family: "Times New Roman", Times, serif;
        }
        .newStyle3 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
        }
        .auto-style121 {
            color: #800000;
            font-size: large;
        }
        .auto-style131 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style151 {
            color: #000000;
            font-family: "Times New Roman";
        font-size: large;
    }
        .auto-style161 {
            font-size: large;
            font-family: "Times New Roman", Times, serif;
            color: #000000;
        }
    .auto-style171 {
        font-family: "Wide Latin";
    }
    .auto-style181 {
        font-family: "Times New Roman";
        font-size: large;
        color: #000000;
        width: 256px;
    }
        .auto-style191 {
            font-family: "Monotype Corsiva";
            font-size: xx-large;
            color: #681237;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> 
    <div class="col-sm-5">
         <div class="slider">
        <div id="coin-slider"> 
            <br />
            <marquee direction="left">
            <img src="myimage/nmgroup.png" width="150px" height="150" alt="" />
            <img src="myimage/nmiet(266).jpg" width="150px" height="150" alt="" />
            <img src="myimage/placement (1).jpg" width="150px" height="150" alt="" />
            <img src="myimage/placementfoot.jpg" width="150px" height="150" alt="" />
            <img src="myimage/training_placement.jpg" width="150px" height="150" alt="" />
            <img src="myimage/chairman.png" width="150px" height="150" alt="" />
            </marquee>
            <br />
            <img src="myimage/home.gif" width="450px" height="360" alt="" /><span><br />
         
           </div>
       
      </div>

        
        <h1 class="auto-style191">Notice</h1>
        <marquee direction="up" onmouseover="stop()" onmouseout="start()" scrollamount="3" style="background-image:url('./myimage/1282860.jpg')">

          
        <%
            
            string sql = "select * from Notice";
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["litcon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
               
               string notice= dr[1].ToString();
               string dofn = dr[2].ToString();
                %>

            <p style="color:yellow"><%=notice %>   posted on <%=dofn %></p>
            <%
                
            }
            
             %></marquee>


    </div>
    <div class="col-sm-61">
       <p class="auto-style91"> <span class="newStyle1">Welcome</span></p> <span class="auto-style181">The Training and Placement Cell of the Institute centrally handles all aspects of campus placements for the graduating students of all Departments. 
        The T & P Cell is well equipped with excellent infrastructure to support each and every stage of the placement processes. The T & P staff members assist in arranging Pre-Placement Talks, Written Tests, Group Discussions,
        and Interviews etc. are made as per the requirements of the Organizations.</span> <br class="auto-style81" /> <br />

        <span class="auto-style131"><strong class="auto-style121">Objectives</strong></span> 
        <br />
        <br />
        
        <img src="myimage/student_placement.jpg" width="200px" height="200px" style="float:left;padding-left:3px;margin-right:20px">
        
        <span class="auto-style161">To organize campus interviews for final year students with industries and business houses of repute from all over India. <br /></li>
       <li> To prepare students to face campus interviews by arranging training in Aptitude tests, group discussions, preparing for Technical and HR interviews through professional trainers and NMIET alumni.</li>
    <li>  To promote career counseling by organizing guidance lectures by senior corporate personnel and most importantly by the immediately placed senior students.</li></span>
        <span class="auto-style151">
        <br /><br />
        <br />
        <img src="myimage/juitstudent.jpg" width="200px" height="200px" style="float:left;padding-left:5px;margin-right:20px"></span>
    
         <span class="auto-style181">The students who apply for the initial selection procedure (written test/GD/interview/CV submission etc.) have to attend the remaining selection procedure of that company/organisation 
        <p>(till the interview) if they are selected in the initial selection procedure. If noticed otherwise, the students will be debarred</p>
from taking part in further placement activities.

2. As soon as a student is selected by a company/organisation, he/she will not be allowed to take part in the placement activities till the second card opens for his/her branch.
    </span>
    </div>
</big></span></span>
</asp:Content>

