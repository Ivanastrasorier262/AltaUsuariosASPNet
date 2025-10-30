<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase9-3.aspx.cs" Inherits="Clase1_lp3.Clase9_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase9-4.aspx">Tercer pagina</asp:HyperLink>
        </div>
    </form>
</body>
</html>
