<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaGimnasio-P1.aspx.cs" Inherits="Clase1_lp3.AltaGimnasio_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
            <h1>ALTA DE ACTIVIDADES DEL GIMNASIO<br /></h1>
            <br />
            Nombre de la actividad:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            Descripcion:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Dias de la semana:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Horarios:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Plan asignado:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre_plan" DataValueField="id_plan">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#00FF99" style="margin-top: 0px" Text="Guardar" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" InsertCommand="INSERT INTO Planes (nombre_plan, descripcion, precio_mensual) VALUES (@nombre, @descipcion, @precio_mensual)" SelectCommand="SELECT id_plan, nombre_plan FROM planes">
                <InsertParameters>
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="descipcion" />
                    <asp:Parameter Name="precio_mensual" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" InsertCommand="INSERT INTO Actividades (nombre_actividad, descripcion, dias, horarios, id_plan)
VALUES (@nombre_actividad, @descripcion, @dias, @horarios, @id_plan)
" SelectCommand="SELECT * FROM [Actividades]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox4" Name="nombre_actividad" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="dias" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1" Name="horarios" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_plan" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
