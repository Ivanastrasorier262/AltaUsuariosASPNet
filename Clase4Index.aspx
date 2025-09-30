<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase4Index.aspx.cs" Inherits="Clase1_lp3.Clase4Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Pagina Principal<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase4-Alta.aspx">Alta Usuarios</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Clase4-Consulta.aspx">Consulta de Usuarios</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Clase4-Modificaciones.aspx">Modificaciones</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Clase4-Borrar.aspx">Baja de usuarios</asp:HyperLink>
        </div>
    </form>
    <p>
        <br />
    </p>
</body>
</html>
