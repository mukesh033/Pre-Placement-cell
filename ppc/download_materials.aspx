<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master" AutoEventWireup="true" CodeFile="download_materials.aspx.cs" Inherits="download_materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/jquery-1.4.2.min.js"></script>
<script src="js/JQuery.js"></script>
    <script>
        $(document).ready(function () {
            $("ImageButton1").click(function () {
                $("#GridView1").load("download_materials.aspx.cs", function(responseTxt, statusTxt, xhr){
                    if(statusTxt == "success")
                        alert("External content loaded successfully!");
                    if(statusTxt == "error")
                        alert("Error: " + xhr.status + ": " + xhr.statusText);
            });
        });

    </script>
    <style type="text/css">

    .auto-style1 {
        width: 500px;
    }
    .auto-style2 {
        }
        .auto-style3 {
            height: 22px;
        }
    .auto-style4 {
        font-family: Arial;
        font-weight: bold;
        font-size: medium;
        color: #EEA236;
    }
    .auto-style5 {
        font-family: Arial;
        font-weight: bold;
        font-size: medium;
        color: #FFFFFF;
    }
    .auto-style6 {
        color: #FFFFFF;
    }
        .auto-style7 {
            width: 422px;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FCF8E3;
            font-weight: bold;
        }
        .auto-style8 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FCF8E3;
            width: 422px;
            height: 19px;
            font-weight: bold;
        }
        .auto-style9 {
            color: #FCF8E3;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            height: 19px;
            font-weight: bold;
        }
        .auto-style10 {
            color: #FCF8E3;
            font-family: "Times New Roman", Times, serif;
            font-size: large (22 pt);
            height: 19px;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            font-family: Rockwell;
            font-size: medium;
            color: #000080;
            width: 256px;
            height: 19px;
            font-weight: bold;
        }
        .auto-style13 {
            font-family: Rockwell;
            height: 19px;
        }
        .auto-style14 {
            font-family: Rockwell;
            width: 422px;
            height: 19px;
            font-weight: bold;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style15 {
            color: #000080;
            font-family: Rockwell;
            font-size: medium;
            height: 19px;
            font-weight: bold;
        }
        .auto-style16 {
            color: #000080;
            font-family: Rockwell;
            font-size: large (22 pt);
            height: 19px;
            width: 256px;
        }
        .auto-style17 {
            color: #000080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <img src="myimage/study.png" height="450px" width="300px"  style="float:left"/>
    <table align="center" class="auto-style1">
        <br /><br /><br /><br /><br />
    <tr>
        <td class="auto-style3" colspan="2"><img src="myimage/downloads_mobile.png" width="400px" height="80px" /></td>
    </tr>
        
    <tr>
       
        <td class="auto-style12"><span class="auto-style11"><br class="auto-style16" /></span><b class="auto-style13"><br class="auto-style17" /></b><span class="auto-style15">Branch</span></td>
        <td><br /><br />
                    <asp:DropDownList ID="DropDownList1br" runat="server">
                        <asp:ListItem>CSE</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>ECE</asp:ListItem>
                        <asp:ListItem>EEE</asp:ListItem>
                        <asp:ListItem>Mechnical</asp:ListItem>
                        <asp:ListItem>General</asp:ListItem>
                    </asp:DropDownList>
                </td>
    </tr>
    <tr>
        <td class="auto-style14">Subject</td>
        <td><a href="#"> 
                    <asp:DropDownList ID="DropDownList2sub" runat="server">
                        <asp:ListItem>general</asp:ListItem>
                        <asp:ListItem>technical</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td>
           &nbsp &nbsp &nbsp <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" ImageUrl="~/myimage/SubmitButton.png"  Width="131px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF6600" Visible="False"><img src="myimage/images (1).jpg" width="150px" height="50px" /></asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2">
            <br />
            <br />
        </td>
    </tr>
</table>
</asp:Content>

