<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 312px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 436px;
        }
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            width: 312px;
            height: 31px;
        }
        .auto-style6 {
            width: 436px;
            height: 31px;
        }
        .auto-style7 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style5">Username</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtUN" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUN" ErrorMessage="Please Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPW" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPW" ControlToValidate="txtCon" ErrorMessage="Password dont match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Confirm Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtCon" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEM" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEM" ErrorMessage="Not Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnReg" runat="server" Text="Add User" Width="180px" OnClick="btnReg_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" InsertCommand="insert into users values(@username,@password,@email)" SelectCommand="SELECT * FROM [Users]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtUN" Name="username" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtPW" Name="password" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtEM" Name="email" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
