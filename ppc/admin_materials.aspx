<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin_home.master" AutoEventWireup="true" CodeFile="admin_materials.aspx.cs" Inherits="materials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /*.auto-style1 {
            width: 400%;
            background-color:ButtonFace;
            
            
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 120px;
        }
        .auto-style4 {
            font-family: "Wide Latin";
            font-weight: bold;
            font-size: large;
            color: #245269;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style5 {
            font-family: Arial;
            font-weight: bold;
            font-size: medium;
            color: #000080;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style6 {
            width: 120px;
            font-weight: bold;
            font-size: medium;
            color: #000080;
        }
        .auto-style7 {
            font-size: medium;
            color: #000080;
            font-weight: bold;
        }*/
        .auto-style9 {
            width: 329px;
        }
        .auto-style10 {
            padding: 0;
            color: #E8E8E8;
            font-family: "Times New Roman";
            font-weight: bold;
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style11 {
            color: #E8E8E8;
        }
        .auto-style12 {
        font-family: "Times New Roman", Times, serif;
        font-size: large;
        font-weight: bold;
        width: 121px;
    }
        .auto-style13 {
            font-family: "Times New Roman";
            font-weight: bold;
            font-size: large;
            width: 121px;
        }
        .auto-style14 {
            font-family: "Times New Roman";
            font-size: large;
            width: 121px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="col-sm-5">
        <br />
        <img src="myimage/new_education-sector_flipped2-copy1.jpg" width="500px" />
        
        </div>

    <div class="col-sm-6">
        <br /><br />
<table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style11"> </span> <span class="auto-style10"><code>Upload Materials</code></span><span class="auto-style4"><br />
                    <br />
                    </span>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Branch </td>
                <td style="color: #CCCCCC; font-family: Arial" class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                <td class="auto-style12">Subject</td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2sub" runat="server">
                        <asp:ListItem>general</asp:ListItem>
                        <asp:ListItem>technical</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Title</td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TextBoxtitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style9">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style9">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/myimage/images.jpg" OnClick="ImageButton1_Click" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br /><br /><br />
    </div>
</asp:Content>

