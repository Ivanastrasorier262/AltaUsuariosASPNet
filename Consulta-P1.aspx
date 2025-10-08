<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta-P1.aspx.cs" Inherits="Clase1_lp3.Consulta_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
           <h1> Consulta de Cliente Registrados.<br /></h1>
            <br />
            Ingrese DNI:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" BackColor="#00FF99" BorderColor="#00CC00" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT Clientes.nombre, Clientes.apellido AS Apellido, Clientes.telefono AS Telefono, Clientes.direccion AS Direccion, Planes.precio_mensual, Planes.descripcion, Planes.nombre_plan FROM Clientes INNER JOIN Planes ON Clientes.id_plan = Planes.id_plan WHERE (Clientes.dni = @dni)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina principal</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
