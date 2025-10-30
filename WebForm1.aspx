<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Clase1_lp3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <h1>Registro de Usuario</h1></p>
<p>
    &nbsp;</p>
<p>
    Correo Electronico:
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="No es un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
</p>
<p>
    Nombre de Usuario:
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Debe ingresar un nombre de usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
</p>
<p>
    Edad:<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Usuario mayores a 15" ForeColor="Red" MaximumValue="40" MinimumValue="15">*</asp:RangeValidator>
</p>
<p>
    Constraseña:<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Ingrese contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
</p>
<p>
    Confirme contraseña:
    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password">*</asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Las contraseñas no son iguales" ForeColor="Red">*</asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Confirme la contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
</p>
<p>
    Nombre y Apellido:
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Debe ingresar un nombre de usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="Ingrese su nombre y apellido" ForeColor="Red">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Registrar" BackColor="#006600" ForeColor="Black" Height="41px" Width="110px" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
