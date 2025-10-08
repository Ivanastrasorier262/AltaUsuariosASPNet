<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificaion-P1.aspx.cs" Inherits="Clase1_lp3.Modificaion_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
           <h1> Modificacion de Cliente<br /></h1>
            <br />
            Ingrese DNI:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Buscar" OnClick="Button1_Click" BackColor="#00FF99" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            Nombre:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Apellido:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Telefono:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            Direccion:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            Plan de entrenamiento:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre_plan" DataValueField="id_plan">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Modificar" OnClick="Button2_Click" BackColor="#00FF99" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT * FROM [Clientes] WHERE ([dni] = @dni)" UpdateCommand="UPDATE Clientes SET nombre = @nombre, apellido = @apellido, telefono = @telefono, direccion = @direccion, id_plan = @id_plan WHERE (dni = @dni)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="apellido" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="telefono" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="direccion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_plan" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT * FROM [Planes]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
        </div>
    </form>
</body>
</html>
