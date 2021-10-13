<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="WebApplication4.Articles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 215px;
        }
        .auto-style2 {
            width: 350px;
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Title</td>
                <td>
                    <asp:TextBox ID="txtTit" runat="server" Width="251px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Details</td>
                <td>
                    <asp:TextBox ID="txtDe" runat="server" Height="210px" TextMode="MultiLine" Width="453px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Photo</td>
                <td>
                    <input id="File1" class="auto-style2" type="file"  runat="server"/></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add Articles" Width="208px" />
    </form>
</body>
</html>
