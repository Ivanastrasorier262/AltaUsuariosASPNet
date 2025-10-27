<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaAutos-ABM.aspx.cs" Inherits="Clase1_lp3.AltaAutos_ABM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Alta de Autos<br /></h1>
            <br />
            Patente:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Propietario:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Precio:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Modelo:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            Marca:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceMarcas" DataTextField="descripcion" DataValueField="codigo">
            </asp:DropDownList>
            <br />
            <br />
            Foto:<asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" BackColor="#006600" BorderColor="#006600" ForeColor="Black" Height="31px" Width="70px" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSourceMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT codigo, descripcion FROM marcas ORDER BY descripcion"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" InsertCommand="INSERT INTO autos (patente, propietario, precio, modelo, codigomarca, foto) VALUES (@patente, @propietario, @precio, @modelo, @codigomarca, @foto)" ProviderName="<%$ ConnectionStrings:MiConexion.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="patente" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="propietario" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox4" Name="modelo" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="codigomarca" PropertyName="SelectedValue" />
                <asp:Parameter Name="foto" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default-ABM.aspx">Pagina Principal</asp:HyperLink>
    </form>
</body>
</html>
