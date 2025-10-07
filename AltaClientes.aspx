<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaClientes.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.AltaClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #9933FF;
        }
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo2 {
            background-color: #CCCCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="nuevoEstilo1">
        <div>
            <h1 class="auto-style1"><span class="nuevoEstilo2">Alta de Clientes </span> </h1>
            <p class="auto-style1">
                Ingrese DNI:<asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Ingrese Nombre:<asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Ingrese Apellido:<asp:TextBox ID="TextBox3" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Ingrese Teléfono:<asp:TextBox ID="TextBox4" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Ingrese Dirección:<asp:TextBox ID="TextBox5" runat="server" BackColor="#CCCCFF"></asp:TextBox>
            </p>
            <p class="auto-style1">
                Plan Contratado
    <asp:DropDownList ID="DropDownList1"
        runat="server"
        DataSourceID="SqlPlanes"
        DataTextField="descripcion"
        DataValueField="id_plan"
        Height="16px"
        Width="145px" BackColor="#CCCCFF">
    </asp:DropDownList>
            </p>

        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" BackColor="#CC99FF" Height="38px" Width="72px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlClientes" runat="server"
    ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>"
    SelectCommand="SELECT * FROM [Clientes]">
</asp:SqlDataSource>

<asp:SqlDataSource ID="SqlPlanes" runat="server"
    ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>"
    SelectCommand="SELECT * FROM [Planes]">
</asp:SqlDataSource>

        <br />
        <br />
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ConsultaCliente.aspx">Consulta de Clientes</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/BajaCliente.aspx">Baja de Clientes</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ModificarCliente.aspx">Modificación de Clientes</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaActividades.aspx">Alta de Actividades</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ConsultaActividades.aspx">Consulta de Actividades</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AltaPlanes.aspx">Alta de Planes</asp:HyperLink>
        </p>
        <p>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ConsultaPlanes.aspx">Consulta de Planes</asp:HyperLink>
        </p>

    </form>
</body>
</html>
