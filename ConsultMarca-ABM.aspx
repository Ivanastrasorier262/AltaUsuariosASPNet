<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultMarca-ABM.aspx.cs" Inherits="Clase1_lp3.ConsultMarca_ABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Seleccionar la Marca<br />
            <br />
            Selecicone la Marca<br />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="codigo">
            </asp:DropDownList>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <asp:Image ID="Image1" runat="server" Width="200px" Height="150px" />
        <br />
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT codigo, descripcion FROM marcas"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT foto FROM autos WHERE (codigomarca = @codigomarca)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="codigomarca" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default-ABM.aspx">Pagina Principal</asp:HyperLink>
    </form>
</body>
</html>
