<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 414px;
        }
        .auto-style24 {
            font-family: "Times New Roman";
            font-size: large;
            color: #FF0000;
            font-weight: bold;
            }
        .auto-style34 {
            width: 202px;
        }
        .auto-style44 {
            width: 202px;
            font-family: "Times New Roman";
            font-weight: bold;
            font-size: large;
            color: #000080;
        }
        .auto-style54 {
            font-size: x-large;
            color: #00FFFF;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />
    <div class="col-sm-5">
    <img src="myimage/thinking-man-large.png" height="400px" width="380px" style="float:left"/>
        </div>
   <p>
        <br />
    </p>
    <div class="col-sm-6">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style24" colspan="2"><span class="auto-style54"><img src="myimage/forgot-password-button-png-hi.png" width="250px" height="60px" /> </span><br />
                
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style44">user_id</td>
            <td>
                <asp:TextBox ID="TextBox1UID" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style44">seq_question</td>
            <td>
                <asp:DropDownList ID="DropDownList1sq" runat="server" Width="291px">
            <asp:ListItem>What is child hood name?</asp:ListItem>
            <asp:ListItem>What is your Pet name?</asp:ListItem>
            <asp:ListItem>Who is your best friend?</asp:ListItem>
            <asp:ListItem>What is your first school name?</asp:ListItem>
        </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td class="auto-style44">Ans.</td>
            <td id="label1">
                <asp:TextBox ID="TextBox3ANS" runat="server" Width="188px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">&nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/myimage/submit_button.png" OnClick="ImageButton1_Click" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
        <br /> <br /> <br /> <br /> <br />
        </div>
    <br /> <br /> <br /> <br /> <br />
</asp:Content>

