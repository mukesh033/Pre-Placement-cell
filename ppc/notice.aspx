<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_admin.master" AutoEventWireup="true" CodeFile="notice.aspx.cs" Inherits="notice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            font-family: "Times New Roman", Times, serif;
            font-weight: bold;
            font-size: large;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>
        &nbsp;</p>
    <p class="auto-style11">
        <span class="auto-style10">NOTICE PANEL</span></p>
    <p class="auto-style11">
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="119px" Width="285px"></asp:TextBox>
    </p>
    <p class="auto-style11">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>

