<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BorrarABM.aspx.cs" Inherits="Clase1_lp3.BorrarABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ingrese la patente del auto a borrar:
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Borrar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" DeleteCommand="delete from autos where patente=@patente" SelectCommand="select foto from autos where patente=@patente ">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="Label1" Name="patente" PropertyName="Text" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="patente" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default-ABM.aspx">Pagina Principal</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
