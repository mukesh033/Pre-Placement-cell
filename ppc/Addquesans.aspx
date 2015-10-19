<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageadmin_home.master" AutoEventWireup="true" CodeFile="Addquesans.aspx.cs" Inherits="Addquesans" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        .auto-style9 {
            font-size: large;
            color:#090909;
        }
        .auto-style10 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
        }
        
        .auto-style15 {
            width: 50%;
            border: 2px solid #000080;
            background-color: #EEEEEE;
        }
        .auto-style16 {
            width: 182px;
        }
        .auto-style17 {
            color: #003399;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .auto-style18 {
            width: 182px;
            color: #003399;
        }
        .auto-style19 {
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #090909;
        }
        .auto-style20 {
        width: 182px;
        color: #800000;
    }
        
        .auto-style21 {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            color: #843534;
        }
        .auto-style22 {
            text-decoration: underline;
            padding: 0;
        }

        .auto-style122 {
        font-family: "Times New Roman", Times, serif;
        font-size: large;
        color: #800000;
    }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <span class="auto-style22"><strong class="auto-style21"><code><span class="auto-style5">Add Questions!!!!!
    </span></code></strong></span>
    <br /><br />

    <table class="auto-style15" align="center">
        <tr>
            <td class="auto-style18">
        <strong class="auto-style17">Subject name:</strong></td>
            <td><asp:DropDownList ID="DropDownList1sub" runat="server" CssClass="auto-style10">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>C++</asp:ListItem>
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong class="auto-style122">Question:</strong></td>
            <td><strong><asp:TextBox ID="TextBox1ques" runat="server" CssClass="auto-style61" TextMode="MultiLine" ForeColor="#003366"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong class="auto-style122">option 1:</strong></td>
            <td><strong><asp:TextBox ID="TextBox3op1" runat="server" CssClass="auto-style61"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong class="auto-style122">option 2:</strong></td>
            <td><strong><asp:TextBox ID="TextBox2op2" runat="server" CssClass="auto-style61"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong class="auto-style122">option 3:</strong></td>
            <td><strong><asp:TextBox ID="TextBox2op3" runat="server" CssClass="auto-style61"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong class="auto-style122">option 4:</strong></td>
            <td><strong><asp:TextBox ID="TextBox2op4" runat="server" CssClass="auto-style61"></asp:TextBox>
        </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
        <strong class="auto-style17">Answer:</strong></td>
            <td><asp:DropDownList ID="DropDownList2ans" runat="server" CssClass="auto-style9">
            <asp:ListItem>option1</asp:ListItem>
            <asp:ListItem>option2</asp:ListItem>
            <asp:ListItem>option3</asp:ListItem>
            <asp:ListItem>option4</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />


    <p>
        &nbsp;</p>
</asp:Content>

