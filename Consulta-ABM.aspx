<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta-ABM.aspx.cs" Inherits="Clase1_lp3.Consulta_ABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Consulta</h1>
            <br />
            <br />
            Ingrese patente:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consulta" BackColor="#006600" />
            <asp:Image ID="Image1" runat="server" Width="200px" Height="150px" />
            <br />

        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" ProviderName="<%$ ConnectionStrings:MiConexion.ProviderName %>" SelectCommand="SELECT propietario, precio, modelo, foto, descripcion
FROM autos au
INNER JOIN marcas ma ON au.codigomarca = ma.codigo
WHERE patente = @patente
">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="patente" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default-ABM.aspx">Pagina Principal</asp:HyperLink>
    </form>
</body>
</html>
