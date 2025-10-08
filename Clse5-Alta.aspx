<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clse5-Alta.aspx.cs" Inherits="Clase1_lp3.Clse5_Alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Alta de Articulos<br />
            <br />
            <br />
            Ingrese codigo:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Ingrese descripcion:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Ingrese precio:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Ingrese Rubro:<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlRubros" DataTextField="descripcion" DataValueField="id">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlArticulos" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" InsertCommand="insert into Articulos (id, descripcion, precio, idrubro) values (@id, @descripcion,@precio,@idrubro)" SelectCommand="SELECT Articulos.* FROM Articulos">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="descripcion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="precio" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="idrubro" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
            <asp:SqlDataSource ID="SqlRubros" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT * FROM [Rubros]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
