<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase-Consulta.aspx.cs" Inherits="Clase1_lp3.Clase_Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consultar<br />
            <br />
            Ingresar nombre de usuario:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase3-Alta.aspx">Alta</asp:HyperLink>
        </p>
    </form>
</body>
</html>
