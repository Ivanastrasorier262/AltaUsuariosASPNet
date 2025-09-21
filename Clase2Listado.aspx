<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase2Listado.aspx.cs" Inherits="Clase1_lp3.Clase2Listado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Listado Comentario<br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase2.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
