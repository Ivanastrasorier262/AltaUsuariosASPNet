<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase3-Alta.aspx.cs" Inherits="Clase1_lp3.Clase3_Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Alta de usuarios<br />
            <br />
            Nombre:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            clave:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            mail:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Clase-Consulta.aspx">Consultas</asp:HyperLink>
        </div>
    </form>
</body>
</html>
