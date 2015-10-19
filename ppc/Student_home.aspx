<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master" AutoEventWireup="true" CodeFile="Student_home.aspx.cs" Inherits="Student_data1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


   
    <style type="text/css">
        .auto-style121 {
            font-family: "Rockwell";
            font-size: large;
            color: #800080;
        }
        .auto-style131 {
            font-family: "Monotype Corsiva";
            font-size: x-large;
            color: #000080;
            font-weight: bold;
        }
        .auto-style141 {
            font-family: "Monotype Corsiva";
            font-size: x-large;
            color: #000080;
        }
        .auto-style151 {
            font-family: Rockwell;
            font-size: medium;
            color: #000080;
        }
        .moke {
            font-family: Rockwell;
            font-size: medium;
            color: #000080;
        }

        .expose {
            font-family: Rockwell;
            font-size: medium;
            color: #000080;
        }
        .auto-style161 {
            font-family: Rockwell;
            font-size: medium;
        }
        .auto-style171 {
            width: 256px;
            font-family: ro;
            color: #000080;
            font-size: medium;
        }
        .auto-style181 {
            width: 256px;
            font-family: ro;
            color: #800000;
        }
        .regular {
            font-family: Rockwell;
            font-size: medium;
            color: #000080;

        }
        .on {
            font-family: Rockwell;
            font-size: medium;
            color: #000080;
        }

        .man {
            font-family: Rockwell;
            font-size: medium;
            color: #800000;
        }
        .auto-style19 {
            color: #800000;
            font-family: Rockwell;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style201 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style211 {
            font-size: medium;
            font-weight: bold;
            color: #800000;
        }
    </style>


   
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <p>
        <br />
    </p>
    <p>
        &nbsp;&nbsp;&nbsp; <span class="auto-style131">WelCome &nbsp; </span><span class="auto-style3"> <b class="auto-style14">  
            <%
                string name = Session["name"].ToString();
                Response.Write(name);
                 %>

                           </b>

                           </span><span class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;</p>


    
         
       <img src="myimage/man-311326_640.png" width="400px" style="float:left"/>
   

    
    
        <span class="auto-style71"><strong style="color: rgb(81, 87, 86); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 19.2000007629395px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" class="auto-style16"><span class="auto-style18" style="line-height: 15.3333320617676px; ">OVERVIEW:</span></strong><br />
        </span> 
   

    
    
        <span class="auto-style151">NMIET’s Training, Placement and Development Cell plays a critical role in networking graduating students with the industry. It prepares the students for the process of recruitment and simultaneously create awareness among companies about the recruitment opportunities at NMIET. Potential recruiters are given structural support for scheduling interviews, hosting seminars, group discussions and written tests.</span> <br /> <br />

        <strong class="auto-style201" style="color: rgb(81, 87, 86); font-style: normal; font-variant: normal; letter-spacing: normal; line-height: 19.2000007629395px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span class="auto-style191" style="line-height: 15.3333320617676px; ">Training of Students:</span></strong> <br />
        
        <img src="myimage/training_placement.jpg" width="250px" height="200px" style="float:left;padding-left:5px;margin-right:20px">
        
            <li>  <span class="auto-style151"><span class="auto-style161">A special corporate training program is conducted for final year students in resume building, group discussions, general knowledge, current affairs, etc. </span> </li>
            <li class="moke">  Mock interviews are conducted by inviting HR Heads and Technical Experts from well-known companies.</li>
            <li class="expose">  &nbsp;For expose to real-world work culture, short industrial tours to neighboring companies and extended visits to distant industries / organizations of national and international repute are conducted each year. </li>
            <li class="regular">  Regular training classes are conducted, on campus, at the Digital English Language Lab to improve the communication skills of students. With a focus on Campus Recruitment, special training classes are conducted in association with professional training institutes and specialists in personality development, etiquette, grooming etc. </li>
            <li class="on">  On campus training for competitive exams like GRE, GATE, CAT, etc is also offered. In order to bridge the gap between the university curriculum and industry needs, the college offers various short-term training programs. These programs include CAD / CAM, J2JEE, VLSI &amp; Embedded systems. </span> </li>
            <li class="auto-style15">  Seminars and workshops are conducted on entrepreneurship development. </li>
    </ul>
        <p>
            &nbsp;</p>
        <ul class="auto-style71">
            <li>  <span class="auto-style211">Placement Services:</span> <span class="auto-style171">Internships and summer placements are ensured. Towards the end of the final year, an Ad campaign is launched in leading newspapers and journals to attract prospective recruiters. Recruitment advertisements are also collected, after thoroughly checking eligibility conditions. For the convenience of students, recruitment application forms are supplied for free of cost.</span></li>
            <li>&nbsp;<span class="auto-style121">Core Team Members:</span>&nbsp; <span class="auto-style181"><span class="auto-style161">Mr. Rajan Pradhan(Placement Executive) - +91- 7752014596</span></li>
            <li class="man">&nbsp;Mr. Manoj Mohapatra (Co-ordinator) - +91- 7205209603</li>
            <li class="man">&nbsp;Mr. Sitanshu Sekhar Deo (Co-ordinator) - +91- 7752014551.</span></li>
    </ul>
        <span class="auto-style71">
        <br />
        </span>
    
</big></span></span>
</asp:Content>

