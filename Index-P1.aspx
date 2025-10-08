<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index-P1.aspx.cs" Inherits="Clase1_lp3.Index_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
            <h1 style="background-color: #CCCCCC">Pagina principal<br /></h1>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" BorderColor="Blue" NavigateUrl="~/Alta-P1.aspx">ALTA DE CLIENTES</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" BorderColor="#0066FF" NavigateUrl="~/Modificaion-P1.aspx">MODIFICACION DE CLIENTE</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" BorderColor="Blue" NavigateUrl="~/Borrar-P1.aspx">BAJA DE CLIENTE</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" BorderColor="Blue" NavigateUrl="~/Consulta-P1.aspx">CONSULTA DE CLIENTE</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" BorderColor="Blue" NavigateUrl="~/AltaGimnasio-P1.aspx">ALTA DE ACTIVIDADES DEL GIMNASIO</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" BorderColor="Blue" NavigateUrl="~/ConsultasActividades-P1.aspx">CONSULTA DE ACTIVIDADES</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/AltaPlanes-P1.aspx">ALTA DE PLANES</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ConsultaPlanes-p1.aspx">CONSULTA DE PLANES</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
