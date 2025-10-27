<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default-ABM.aspx.cs" Inherits="Clase1_lp3.Default_ABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ABM&nbsp; de Marcas<br /></h1>
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/abmmarcas.aspx">Tabla</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaAutos-ABM.aspx">Alta de autos</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Consulta-ABM.aspx">Consulta por Patentes</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ConsultMarca-ABM.aspx">Consulta por Marcas</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/BorrarABM.aspx">Borrado de un auto</asp:HyperLink>
            <br />
            <br />
        <asp:HyperLink ID="HyperLink5" runat="server">Autos por Modelos</asp:HyperLink>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
