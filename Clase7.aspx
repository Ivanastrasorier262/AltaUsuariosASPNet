<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clase7.aspx.cs" Inherits="Clase1_lp3.Clase7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ingrese nombre de usuario:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Debe ingresar nombre de usuario" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Ingrese su edad:<asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="La edad debe tener entre 18 y 40 años" ForeColor="Red" MaximumValue="40" MinimumValue="18">*</asp:RangeValidator>
            <br />
            <br />
            Ingrese su contraseña:<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Ingrese contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Confirme su contraseña:<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Las contraseñas no son iguales " ForeColor="Red">*</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirme la contraseña" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            Confirma que no es un robot: Ingrese un multiplo de 5:
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="No es multiplo de 5" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
            <br />
            <br />
            Ingrese su correo: <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="No es un correo valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
