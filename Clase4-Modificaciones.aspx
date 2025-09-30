<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase4-Modificaciones.aspx.cs" Inherits="Clase1_lp3.Clase4_Modificaciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nombre de ususario:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            Clave:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            mail:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase4-Alta.aspx">Retornar</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-6F00GBV\SQLEXPRESS;Initial Catalog=Lp3;Integrated Security=True;TrustServerCertificate=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id], [nombre], [clave], [mail] FROM [Usuarios] WHERE ([nombre] = @nombre)" UpdateCommand="UPDATE usuarios SET clave = @clave, mail = @mail WHERE (nombre = @nombre)">
                <SelectParameters>
                    <asp:Parameter Name="nombre" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="clave" />
                    <asp:Parameter Name="mail" />
                    <asp:Parameter Name="nombre" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
