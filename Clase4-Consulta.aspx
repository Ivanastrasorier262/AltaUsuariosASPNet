<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase4-Consulta.aspx.cs" Inherits="Clase1_lp3.Clase4_Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Consultar<br />
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
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase4Index.aspx">Retornar</asp:HyperLink>
</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT [id], [nombre], [clave], [mail] FROM [Usuarios] WHERE ([nombre] = @nombre)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
</p>
        </div>
    </form>
</body>
</html>
