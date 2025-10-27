<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abmmarcas.aspx.cs" Inherits="Clase1_lp3.abmmarcas" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ABM de Marcas</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" 
                DataKeyNames="codigo" 
                DataSourceID="SqlDataSource1" 
                AllowSorting="True" 
                BackColor="White" 
                BorderColor="#DEDFDE" 
                BorderStyle="None" 
                BorderWidth="1px" 
                CellPadding="4" 
                ForeColor="Black" 
                GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="codigo" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="codigo" />
                    <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MiConexion %>" 
                InsertCommand="INSERT INTO marcas (descripcion) VALUES (@descripcion)" 
                SelectCommand="SELECT codigo, descripcion FROM marcas" 
                DeleteCommand="DELETE FROM marcas WHERE codigo = @codigo" 
                UpdateCommand="UPDATE marcas SET descripcion = @descripcion WHERE codigo = @codigo">
                <DeleteParameters>
                    <asp:Parameter Name="codigo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="descripcion" Type="String" />
                    <asp:Parameter Name="codigo" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            Ingrese descripción de la marca:&nbsp; 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" BackColor="#006600" Width="80px" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default-ABM.aspx">Pagina Principal</asp:HyperLink>
            <br />
            <br />
        </div>
    </form>
</body>
</html>