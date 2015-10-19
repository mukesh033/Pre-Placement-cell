<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master" AutoEventWireup="true" CodeFile="changepwd.aspx.cs" Inherits="changepwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style7 {
            width: 422px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style8 {
            width: 256px;
            height: 19px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style9 {
            width: 422px;
            height: 19px;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            color: #FFFFFF;
            font-weight: bold;
        }
        .auto-style12 {
            width: 256px;
            height: 19px;
            font-family: Rockwell;
            font-size: large;
            font-weight: bold;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style13 {
            width: 422px;
            height: 19px;
            font-family: Rockwell;
            font-size: large;
            font-weight: bold;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <img src="myimage/lock.png" height="400px" width="300px" style="float:left"/>

    <p>
        <br />
    </p>
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style3" colspan="2"><img src="myimage/changepassword_button (1).png" height="70px" width="250px" /><br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Old Password</td>
            <td>
                <asp:TextBox ID="TextBox1opwd" runat="server" TextMode="Password" Width="119px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">New Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2npwd" runat="server" Width="121px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Re- Password</td>
            <td>
                <asp:TextBox ID="TextBox3rpwd" runat="server" Width="122px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="45px" ImageUrl="~/myimage/submit-button-blue-hi.png" OnClick="ImageButton1_Click" Width="150px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="Labelmsg" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br /><br /><br /><br /><br /><br />

</asp:Content>

