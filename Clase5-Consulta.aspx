<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase5-Consulta.aspx.cs" Inherits="Clase1_lp3.Clase5_Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consulta de articulos<br />
            <br />
            Ingrse codigo del articulo:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;<p>
                <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Buscar" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT Articulos.descripcion AS Articulos, Articulos.precio AS Precio, Rubros.descripcion AS Rubro FROM Articulos INNER JOIN Rubros ON Articulos.idrubro = Rubros.id WHERE (Articulos.id = @id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina principal</asp:HyperLink>
            </p>
            <p>&nbsp;</p>
            <h1><br /></h1>
            <br />
        </div>
    </form>
</body>
</html>
