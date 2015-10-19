<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" EnableEventValidation="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        

        .auto-style73 {
            width: 279px;
        }
        

        .newStyle1 {
            table-layout: auto;
            width:800px;
        }
        .newStyle2 {
            background-image: url('myimage/background.jpg');
            font-size: medium;
            font-weight: 700;
            color: #FFFFFF;
        }
        .newStyle3 {
            background-image: url('myimage/background.jpg');
        }
        .auto-style83 {
            background-image: url('myimage/background.jpg');
            font-weight: bold;
            font-size: medium;
            color: #FFFFFF;
            width: 113px;
            background-color: #FFFFFF;
        }
        .auto-style93 {
            background-image: url('myimage/background.jpg');
            font-size: medium;
            font-weight: 700;
            color: #FFFFFF;
            width: 113px;
        }
        

        .auto-style103 {
            color: #FF0000;
        }
        

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
    <img src="myimage/register_now_icon.png" height="70px" width="300px" /><br />

    <div class="col-sm-4">
        <img src="myimage/placementfoot.jpg" height="450px" width="100%" style="padding-top:20px; padding-bottom:20px"/>
    </div>

    <div class="col-sm-7">

        <br /><br />
        
        <table align="center" class="newStyle1" >
            <tr>
                <td class="auto-style93">First Name<span class="auto-style10">*</span></td>
                <td class="auto-style73">
        
        <asp:TextBox ID="TextBox5first" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2uid" runat="server" ControlToValidate="TextBox5first" ErrorMessage="should not leave blank" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style93">Last Name<span class="auto-style103">*</span></td>
                <td class="auto-style73">
        
                    <asp:TextBox ID="TextBox1last" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2last" runat="server" ControlToValidate="TextBox1last" ErrorMessage="should not leave blank" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style93">Image<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style93">User_id<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox1uid" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1uid" runat="server" ControlToValidate="TextBox1uid" ErrorMessage="should not leave blank" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style93">Password<span class="auto-style103">*</span></td>
                <td class="auto-style73">
        
        <asp:TextBox ID="TextBox2password" runat="server" TextMode="Password">

</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2password" ErrorMessage="should not leave blank!!" SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style93">Confirm Password<span class="auto-style103">*</span></td>
                <td class="auto-style73">
        
        <asp:TextBox ID="TextBox3cpassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2password" ControlToValidate="TextBox3cpassword" ErrorMessage="Password  must be Same!!" ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style93">Mobile no.<span class="auto-style103">*</span></td>
                <td class="auto-style73">
           <asp:TextBox ID="TextBox7mobile" runat="server" MaxLength="10"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox7mobile" ErrorMessage="Invalid Mobileno!" ForeColor="Red" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style93">Email_id<span class="auto-style103">*</span></td>
                <td class="auto-style73">
        
        <asp:TextBox ID="TextBox8email" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox8email" ErrorMessage="Please Enter valid email formate!!" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox8email" ErrorMessage="Should not leave blank!!" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">Security_Question</td>
                <td class="auto-style73">
         <asp:DropDownList ID="DropDownList1sq" runat="server">
            <asp:ListItem>What is child hood name?</asp:ListItem>
            <asp:ListItem>What is your Pet name?</asp:ListItem>
            <asp:ListItem>Who is your best friend?</asp:ListItem>
            <asp:ListItem>What is your first school name?</asp:ListItem>
        </asp:DropDownList>

                </td>
            </tr>
            <tr>
                <td class="auto-style83">Answer</td>
                <td class="auto-style73">
         <asp:TextBox ID="TextBox4ans" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">D.O.B<span class="auto-style103">*</span></td>
                <td class="auto-style73">
        
        <asp:TextBox ID="TextBox1dob" runat="server"></asp:TextBox>
                    
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1dob" ErrorMessage="should not leave blank" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1dob" ErrorMessage="Please enter date in dd/mm/yyyy format" ForeColor="Red" SetFocusOnError="True" ToolTip="Please enter date in dd/mm/yyyy format" ValidationExpression="(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">Registration no.<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox1reg" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1reg" ErrorMessage="should not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">College<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox1col" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">10th Marks in %<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox110th" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox110th" ErrorMessage="should not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">12th Marks in %<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox12th" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox12th" ErrorMessage="should not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">Branch<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox1branch" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1branch" ErrorMessage="should not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style83">Address<span class="auto-style103">*</span></td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox1ads" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox1ads" ErrorMessage="should not leave blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <br />
        <br />
        
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register now" Width="127px" ForeColor="White" Height="35px" BackColor="Red" Font-Bold="True" />

         
       
        <br />

        <br />
        <br />

        </div>
   
       
</asp:Content>

