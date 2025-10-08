<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alta-P1.aspx.cs" Inherits="Clase1_lp3.Alta_P1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #CCCCCC">
            <h1>Alta de Cliente<br /></h1>
            <br />
            DNI:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Nombre:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:SqlDataSource ID="SqlPlan" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" SelectCommand="SELECT * FROM [Planes]"></asp:SqlDataSource>
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
            Plan contratado:
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlPlan" DataTextField="nombre_plan" DataValueField="id_plan">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" Width="95px" BackColor="#00FF99" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlClientes" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexion %>" InsertCommand="INSERT INTO Clientes (dni, nombre, apellido, telefono, direccion, id_plan) VALUES (@dni,@nombre,@apellido,@telefono,@direccion,@id_plan);" SelectCommand="SELECT Clientes.* FROM Clientes" OnSelecting="SqlClientes_Selecting">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox3" Name="apellido" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox4" Name="telefono" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox5" Name="direccion" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_plan" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index-P1.aspx">Pagina Principal</asp:HyperLink>
        </div>
    </form>
</body>
</html>
