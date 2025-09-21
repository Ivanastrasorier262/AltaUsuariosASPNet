<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase2Carga.aspx.cs" Inherits="Clase1_lp3.Clase2Carga" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Carga de comentarios<br />
            <br />
            Nombre:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Pais:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Comentarios:<br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Height="58px" TextMode="MultiLine" Width="276px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase2.aspx">Retornar</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
