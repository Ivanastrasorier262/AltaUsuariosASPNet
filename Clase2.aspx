<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase2.aspx.cs" Inherits="Clase1_lp3.Clase2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Clase 2- Archivo de texto<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase2Carga.aspx">Cargar comentarios</asp:HyperLink>
            :<br />
            <br />
        </div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Clase2Listado.aspx">Listado de comentarios</asp:HyperLink>
        :<p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
