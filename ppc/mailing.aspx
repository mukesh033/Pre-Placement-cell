<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_admin.master" AutoEventWireup="true" CodeFile="mailing.aspx.cs" Inherits="mailing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 60%;
            border: 1px solid #000080;
            background-color: #EEEEEE;
            
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style9 {
            font-family: "Times New Roman", Times, serif;
            font-size: xx-large;
            color: #000080;
        }
        .auto-style10 {
            text-decoration: underline;
            font-family: "Times New Roman", Times, serif;
        }
        .auto-style11 {
            width: 209px;
        }
        .auto-style12 {
            width: 209px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
            text-align: center;
        }
        .auto-style13 {
            width: 209px;
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
            text-align: center;
            color: #000080;
        }
        .auto-style14 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
    <table class="auto-style7">
        <tr>
            <td class="auto-style8" colspan="2"><strong class="auto-style9"><code class="auto-style14"><span class="auto-style10">Mailing</span></code><br />
                <br />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td> &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">Subject :</td>
            <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>  </td>
        </tr>
        <tr>
            <td class="auto-style13">To :</td>
            <td>  <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style13">Message :</td>
            <td> <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox> 
            </td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="button" runat="server" Text="SEND" OnClick="button_Click" />
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />

    <br />
    <br />
    <br />
    </asp:Content>

