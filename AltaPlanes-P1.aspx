<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPlanes-P1.aspx.cs" Inherits="Clase1_lp3.AltaPlanes_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
            ALTA DE PLANES<br />
            <br />
            Nombre del plan:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Descripcion:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Precio mensual:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#00FF99" Height="29px" OnClick="Button1_Click" Text="Alta" Width="66px" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" InsertCommand="INSERT INTO [dbo].[Planes] ([nombre_plan], [descripcion], [precio_mensual]) VALUES (@nombre_plan, @descripcion, @precio_mensual)" SelectCommand="SELECT Planes.* FROM Planes">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="nombre_plan" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="precio_mensual" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ConsultaPlanes-p1.aspx">Ver todos los planes</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
