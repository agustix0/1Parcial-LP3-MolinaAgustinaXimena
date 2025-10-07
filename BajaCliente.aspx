<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaCliente.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.BajaCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF3300;
        }
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo2 {
            background-color: #FFCCCC;
            color: #CC3300;
        }
        .nuevoEstilo3 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="nuevoEstilo1">
            <h1 class="auto-style1"><span class="nuevoEstilo2">Baja de Clientes </span> </h1>
            <p class="auto-style1">Ingrese el DNI del cliente:
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCCC"></asp:TextBox>
            </p>
        </div>
        <asp:Button ID="Button1" runat="server" BackColor="#FFCCCC" Height="48px" OnClick="Button1_Click" Text="Borrar" Width="77px" />
        <p class="nuevoEstilo1">
            <asp:Label ID="Label1" runat="server" style="color: #FF3300"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" DeleteCommand="delete from clientes where dni =@dni" SelectCommand="SELECT * FROM [Clientes]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="nuevoEstilo3" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
    </form>
</body>
</html>
