<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_admin.master" AutoEventWireup="true" CodeFile="SMS.aspx.cs" Inherits="SMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 50%;
            border: 2px solid #000080;
            background-color: #FCF8E3;
        }
        
        }
        .auto-style10 {
            font-size: medium;
            color: #800000;
            width: 169px;
        }
        .auto-style11 {
            font-size: x-large;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br /><br /><br />
    <table align="center" class="auto-style7">
        <tr>
            <td class="auto-style8" colspan="2">
                <br />
                <span class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Send SMS<br />
                <br />
                </span>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">To :</td>
            <td><asp:TextBox ID="TextBox3" runat="server" Width="134px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Message :</td>
            <td> <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="58px" Width="158px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Send msg" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    


</asp:Content>

