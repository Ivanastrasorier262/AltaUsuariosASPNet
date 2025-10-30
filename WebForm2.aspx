<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Clase1_lp3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <h1>Sistema de Gestion de documentos legales</h1>
    <p><h2>Bienvenido</h2></p>
</p>
<p>
    &nbsp;</p>
<p>
    Seleccionar archivo:
    <asp:FileUpload ID="FileUpload1" runat="server" />
</p>
<p>
    &nbsp;</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Confirmar" OnClick="Button1_Click" BackColor="#006600" Height="39px" Width="119px" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</p>
<p>
    &nbsp;</p>
    Tamaño del nombre en byte:
<asp:Label ID="Label2" runat="server"></asp:Label>
<p>
    Nombre del archivo:
    <asp:Label ID="Label3" runat="server"></asp:Label>
</p>
    Tipo:
<asp:Label ID="Label4" runat="server"></asp:Label>
    <br />
<p>
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/WebForm1.aspx">Registrarme</asp:HyperLink>
</p>
</asp:Content>
