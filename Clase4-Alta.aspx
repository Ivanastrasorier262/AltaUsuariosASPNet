<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase4-Alta.aspx.cs" Inherits="Clase1_lp3.Clase4_Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Alta de usuarios<br />
    <br />
    Nombre:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
    <br />
    clave:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
    <br />
    mail:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase4Index.aspx">Retornar</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-6F00GBV\SQLEXPRESS;Initial Catalog=Lp3;Integrated Security=True;TrustServerCertificate=True" InsertCommand="Insert into Usuarios (nombre, clave, mail) VALUES (@nombre,@clave,@mail)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM (Usuarios)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="clave" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="mail" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
</div>
    </form>
</body>
</html>
