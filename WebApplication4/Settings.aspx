<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="WebApplication4.Settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:Button ID="AddUser" runat="server" OnClick="AddUser_Click" Text="Add User" Width="251px" />
            <asp:Button ID="AddArticle" runat="server" OnClick="AddArticle_Click" Text="Add Article" Width="248px" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Edit Article" Width="230px" />
        </p>
    </form>
</body>
</html>
