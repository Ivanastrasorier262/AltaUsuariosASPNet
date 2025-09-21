<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase1.aspx.cs" Inherits="Clase1_lp3.Clase1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Text="sumar"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Restar"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Dividir"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Multiplicar"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" />
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="0"></asp:Label>
        </p>
    </form>
</body>
</html>
