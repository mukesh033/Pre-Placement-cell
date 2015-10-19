<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="studentlogin.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       
       
        .auto-style12 {
            font-family: "Times New Roman";
            font-weight: bold;
            font-size: x-large;
            color: #FF0000;
        }
       
       
        .auto-style22 {
            width: 400px;
        }
       
       
        .auto-style32 {
            font-family: "Segoe UI Black";
            font-weight: bold;
            color: #000080;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style42 {
            font-family: "Segoe UI Black";
            font-weight: bold;
            font-size: large;
            color: #000080;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
       
       
        .auto-style52 {
            font-weight: bold;
            font-size: large;
            color: #000080;
            font-family: "Segoe UI Black";
        }
        .auto-style62 {
            color: #000080;
            font-weight: bold;
            font-family: "Segoe UI Black";
        }
       
       
        .auto-style122 {
            font-weight: bold;
            font-size: large;
            color: #DFF0D8;
            font-family: "Times New Roman", Times, serif;
            width: 433px;
            height: 19px;
        }
        .auto-style132 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
            color: #DFF0D8;
            width: 256px;
            height: 19px;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style142 {
            color: #DFF0D8;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            height: 19px;
        }
        .auto-style152 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #DFF0D8;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
       
       
        .auto-style192 {
            color: #000080;
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            height: 19px;
            font-size: large;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style202 {
            font-size: large;
            color: #000080;
            font-family: "Times New Roman", Times, serif;
            width: 256px;
            height: 19px;
        }
        .auto-style212 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
            color: #000080;
            width: 433px;
            height: 19px;
            text-align: center;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style222 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            color: #000080;
            font-size: large;
            border-left-color: #A0A0A0;
            border-right-color: #C0C0C0;
            border-top-color: #A0A0A0;
            border-bottom-color: #C0C0C0;
            padding: 1px;
        }
        .auto-style232 {
            font-weight: bold;
            font-size: large;
            color: #000080;
            font-family: "Times New Roman", Times, serif;
            width: 256px;
            height: 19px;
        }
       
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="col-sm-5">
        <br />
         <div class="slider">
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
            <img src="myimage/home.gif" width="500px" height="360" alt="" /><span><br />

              
           </div>
       <br />
      </div>



   

    <div class="col-sm-6">


        <table class="nav-justified">
            <tr>
                <td>
                    <table align="center" class="auto-style22">
                        <tr>
                            <br />  <br />
                            <td colspan="2"> <span class="auto-style12"><img src="myimage/LoginButton.jpg" height="70px" width="250px"/></span>
        </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align: right" class="auto-style202"><span class="auto-style222">user id :-&nbsp;</span><span class="auto-style192">&nbsp;</span></td>
                            <td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" class="auto-style202"><span class="auto-style212">password :-&nbsp;</span><span class="auto-style232">&nbsp;</span></td>
                            <td>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/myimage/login (1).png" OnClick="ImageButton1_Click1" Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center"> 
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right"> <a href="registration.aspx"><img src="myimage/signup-now.png" width="150px" height="30px" /></a> |</td>
                            <td>&nbsp; <a href="forgotpwd.aspx"> <img src="myimage/forgot-password-button-png-hi.png" width="150px" height="30px" /> </a></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </div>

</big></span></span>

</asp:Content>

