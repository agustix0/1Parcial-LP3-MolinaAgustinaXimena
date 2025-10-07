<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaCliente.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.ConsultaCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #33CC33;
        }
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo2 {
            background-color: #CCFFCC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="nuevoEstilo1">
        <div>
            <h1 class="auto-style1"> <span class="nuevoEstilo2">Consulta de Clientes</span></h1>
            <p class="auto-style1"> Ingrese DNI del cliente:
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC"></asp:TextBox>
            </p>
            <p class="auto-style1"> 
                <asp:Button ID="Button1" runat="server" Text="Buscar" BackColor="#CCFFCC" Height="42px" OnClick="Button1_Click" Width="78px" />
            </p>
            <p class="auto-style1"> 
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT dni, nombre, apellido, telefono, direccion FROM Clientes WHERE (dni = @dni)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
    </form>
</body>
</html>
