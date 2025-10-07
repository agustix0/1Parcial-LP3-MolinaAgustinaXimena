<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaPlanes.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.ConsultaPlanes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #660066;
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
            <h1 class="auto-style1"><span class="nuevoEstilo2">Consulta de Planes </span> </h1>
            <p class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCFF" DataKeyNames="id_plan" DataSourceID="SqlDataSource1" Height="224px" Width="475px">
                    <Columns>
                        <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                        <asp:BoundField DataField="nombre_plan" HeaderText="nombre_plan" SortExpression="nombre_plan" />
                        <asp:BoundField DataField="precio_mensual" HeaderText="precio_mensual" SortExpression="precio_mensual" />
                        <asp:BoundField DataField="id_plan" HeaderText="id_plan" InsertVisible="False" ReadOnly="True" SortExpression="id_plan" />
                    </Columns>
                </asp:GridView>
            </p></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT * FROM [Planes]"></asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
    </form>
</body>
</html>
