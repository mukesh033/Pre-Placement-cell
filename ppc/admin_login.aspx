<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_admin.master" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .alogin {
            width: 500px;
            background-color:#E3E3E3;
        }
        
        .auto-style75 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #080808;
            height: 19px;
            font-weight: bold;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br />

        <img src="myimage/admin.png" height="400px" width="300px" style="float:left"/>
       

    

    <table align="center" class="alogin"  >
        <caption style="height: 241px; width: 504px;">
        <br /><br /><span class="auto-style35"><span class="auto-style4"><img src="myimage/admin-login.png" width="300px" height="80px" /></span></span><br /><br /><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><br /><br /><br /><br /><br /><br /><br />
        <tr>
            <td class="auto-style75">User_id</td>
            <td class="auto-style55" style="padding-top:10px">
                <asp:TextBox ID="TextBox1_user" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style75">Password</td>
            <td class="auto-style55">
                <asp:TextBox ID="TextBox1pass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style55">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/myimage/login-button-blue-hi.png" OnClick="ImageButton1_Click" Width="150px" />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style55">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin_forgot_pwd.aspx" Font-Bold="True" ForeColor="#003366">Forgot Password</asp:HyperLink>
            </td>
        </tr>
    </table>
         
      
    <br /><br /><br /><br />

     
</asp:Content>

