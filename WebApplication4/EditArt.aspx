<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditArt.aspx.cs" Inherits="WebApplication4.EditArt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NewsConnectionString %>" DeleteCommand="delete from articles where id=@id" SelectCommand="SELECT * FROM [articles]" UpdateCommand="update articles set title=@title,details=@details where id=@id"></asp:SqlDataSource>
    </form>
</body>
</html>
