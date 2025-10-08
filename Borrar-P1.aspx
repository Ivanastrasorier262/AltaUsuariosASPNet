<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Borrar-P1.aspx.cs" Inherits="Clase1_lp3.Borrar_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
           <h1> Baja de Cliente<br /></h1>
            <br />
            Ingrese el DNI del cliente:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" BackColor="#00FF99" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-6F00GBV\SQLEXPRESS;Initial Catalog=Lp3;Integrated Security=True;TrustServerCertificate=True" DeleteCommand="delete from clientes where dni =@dni" ProviderName="System.Data.SqlClient">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
