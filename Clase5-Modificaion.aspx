<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase5-Modificaion.aspx.cs" Inherits="Clase1_lp3.Clase5_Modificaion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Modificaion de articulos<br />
            <br />
            <br />
            Codigo del articulo a modificar:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            Nueva descripcion: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Nuevo precio:
            <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT * FROM [Rubros]"></asp:SqlDataSource>
            <br />
            <br />
            Nuevo rubro:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Modificar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT * FROM [Articulos] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
