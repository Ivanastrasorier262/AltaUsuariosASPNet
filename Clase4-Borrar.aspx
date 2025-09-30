<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase4-Borrar.aspx.cs" Inherits="Clase1_lp3.Clase4_Borrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>Borrar<br />
            <br />
            Ingresar nombre de usuario:
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase3-Alta.aspx">Retornar</asp:HyperLink>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" DeleteCommand="delete from usuarios where nombre =@nombre" ConnectionString="Data Source=DESKTOP-6F00GBV\SQLEXPRESS;Initial Catalog=Lp3;Integrated Security=True;TrustServerCertificate=True" ProviderName="System.Data.SqlClient">
                <DeleteParameters>
                    <asp:Parameter Name="newparameter" />
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </p>
      
    </form>
</body>
</html>
