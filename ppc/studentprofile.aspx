<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagestudent.master" AutoEventWireup="true" CodeFile="studentprofile.aspx.cs" Inherits="studentprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="nav-justified">
        <tr>
            <td>

                <asp:Image ID="Image1" runat="server" Height="140px" Width="120px" />

            </td>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="user_id" DataSourceID="SqlDataSource1" Height="50px" Width="402px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="Name" HeaderText="First Name" SortExpression="Name" />
                        <asp:BoundField DataField="last_name" HeaderText="last_name" SortExpression="last_name" />
                        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" SortExpression="user_id" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                        <asp:BoundField DataField="Email_id" HeaderText="Email_id" SortExpression="Email_id" />
                        <asp:BoundField DataField="Registration_no" HeaderText="Registration_no" SortExpression="Registration_no" />
                        <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                        <asp:BoundField DataField="Ten_marks" HeaderText="10th_marks" SortExpression="Ten_marks" />
                        <asp:BoundField DataField="Twevel_marks" HeaderText="12th_marks" SortExpression="Twevel_marks" />
                        <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        
                    </Fields>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:litcon %>" SelectCommand="SELECT [Name], [user_id], [dob], [mobile_no], [Email_id], [Registration_no], [College], [Ten_marks], [Twevel_marks], [Branch], [Address], [last_name] FROM [Registration] WHERE ([user_id] = @user_id)" UpdateCommand="update Registration set name =@name,last_name=@last_name,dob=@dob, mobile_no=@mobile_no, Email_id=@Email_id, Registration_no=@Registration_no, college=@college,ten_marks=@ten_marks,twevel_marks=@twevel_marks,branch=@branch,address=@address where user_id=@user_id;" OnSelecting="SqlDataSource1_Selecting">
                    <SelectParameters>
                        <asp:SessionParameter Name="user_id" SessionField="user_id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>

