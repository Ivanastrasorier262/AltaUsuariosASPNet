<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase8.aspx.cs" Inherits="Clase1_lp3.Clase8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Subida de archivos<br />
            <br />
            Seleccione el archivo a subir :
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            Tamaño del nombre en byte:
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            Nombre del archivo:
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            Tipo:
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        </div>
    </form>
</body>
</html>
