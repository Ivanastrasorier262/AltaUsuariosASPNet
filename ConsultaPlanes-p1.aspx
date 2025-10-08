<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaPlanes-p1.aspx.cs" Inherits="Clase1_lp3.ConsultaPlanes_p1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
            CONSULTA DE PLANES DEL GIMNASIO<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id_plan" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="id_plan" HeaderText="id_plan" InsertVisible="False" ReadOnly="True" SortExpression="id_plan" />
                    <asp:BoundField DataField="nombre_plan" HeaderText="nombre_plan" SortExpression="nombre_plan" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                    <asp:BoundField DataField="precio_mensual" HeaderText="precio_mensual" SortExpression="precio_mensual" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" DeleteCommand="DELETE FROM [dbo].[Planes] WHERE [id_plan] = @id_plan" InsertCommand="INSERT INTO [dbo].[Planes] ([nombre_plan], [descripcion], [precio_mensual]) VALUES (@nombre_plan, @descripcion, @precio_mensual)" SelectCommand="SELECT [id_plan], [nombre_plan], [descripcion], [precio_mensual] 
                               FROM [dbo].[Planes] 
                               ORDER BY [nombre_plan]" UpdateCommand="UPDATE [dbo].[Planes] 
                               SET [nombre_plan] = @nombre_plan, 
                                   [descripcion] = @descripcion, 
                                   [precio_mensual] = @precio_mensual 
                               WHERE [id_plan] = @id_plan">
            <DeleteParameters>
                <asp:Parameter Name="id_plan" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nombre_plan" />
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="precio_mensual" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nombre_plan" />
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="precio_mensual" />
                <asp:Parameter Name="id_plan" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AltaPlanes-P1.aspx">Ir a Alta de planes del gimansio</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
    </form>
</body>
</html>
