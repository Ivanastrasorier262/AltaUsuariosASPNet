<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultasActividades-P1.aspx.cs" Inherits="Clase1_lp3.ConsultasActividades_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
           <h1> Consultas de Actividades<br /></h1>
            <br />
            Tipo de Actividad:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_actividad" DataValueField="id_actividades">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#00FF99" Text="Buscar" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT id_actividades, nombre_actividad FROM actividades"></asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT a.nombre_actividad, a.descripcion, a.dias, a.horarios, p.precio_mensual
FROM actividades a INNER JOIN planes p ON a.id_plan = p.id_plan
WHERE a.id_actividades = @id_actividades">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_actividades" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
