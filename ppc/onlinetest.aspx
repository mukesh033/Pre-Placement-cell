<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master" AutoEventWireup="true" CodeFile="onlinetest.aspx.cs" Inherits="onlinetest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/JQuery.js"></script>
    <script src="js/myscript.js"></script>
    <style type="text/css">
        .auto-style12 {
            color: #FF0000;
        }
        .auto-style13 {
            text-align: left;
            font-size: medium;
        }
        .auto-style14 {
            color: #99CCFF;
        }
        .auto-style15 {
            font-size: xx-large;
            color: #339933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="text-center"><span class="auto-style12">The online c test exam</span>
       
    </h1>
    <p class="auto-style13"><strong class="auto-style14">Instructions :-</strong></p>
    <ul class="auto-style9">
        <li>The test is of 15 mins</li>
        <li>Calculators and other electronic devices are not allowed</li>
        <li>"4" marks for the write anwer and "-1" for the wrong answer</li>
        <li>Any help from google will not be tolerated and the candidate will be disqualifed</li>
    </ul>
  
    <h1 class="auto-style15">All the best</h1>        
    <input type="hidden" value="<%Response.Write(Session["user_id"].ToString());%>" id="userid" />
      <input type="button" value="Start Exam" onclick="startexam()"/>

<br />

</asp:Content>

