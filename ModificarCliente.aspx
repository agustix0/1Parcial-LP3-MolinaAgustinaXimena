<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarCliente.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.ModificarCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FF33CC;
        }
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo2 {
            background-color: #FF99CC;
        }
        .nuevoEstilo3 {
            background-color: #FF99CC;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="nuevoEstilo1">
        <div>
            <h1 class="auto-style1"><span class="nuevoEstilo3">Modificación de Clientes</span></h1>
            <p class="auto-style1">Ingrese el DNI del cliente:<asp:TextBox ID="TextBox1" runat="server" BackColor="#FFCCFF"></asp:TextBox>
            </p>
            <p class="auto-style1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" BackColor="#FF99FF" Height="38px" Width="73px" />
            </p>
            <p class="auto-style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
            <p class="auto-style1">
                <asp:SqlDataSource
                    ID="SqlDataSource1"
                    runat="server"
                    ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>"
                    SelectCommand="SELECT * FROM [Clientes] WHERE ([dni] = @dni)"
                    UpdateCommand="UPDATE Clientes SET dni = @dni, nombre = @nombre, apellido = @apellido, telefono = @telefono, direccion = @direccion, id_plan = @id_plan WHERE (dni = @dni)">

                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="dni" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TextBox2" Name="dni" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox3" Name="nombre" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox4" Name="apellido" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox5" Name="telefono" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextBox6" Name="direccion" PropertyName="Text" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="id_plan" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                    </UpdateParameters>
                </asp:SqlDataSource>

                <p class="auto-style1">
                    Nuevo DNI:
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#FFCCFF"></asp:TextBox>
                </p>
                <p class="auto-style1">
                    Nuevo Nombre:
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#FFCCFF"></asp:TextBox>
                </p>
                <p class="auto-style1">
                    Nuevo Apellido:
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFCCFF"></asp:TextBox>
                </p>
                <p class="auto-style1">
                    Nuevo Teléfono:
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#FFCCFF"></asp:TextBox>
                </p>
                <p class="auto-style1">
                    Nueva Dirección:
                <asp:TextBox ID="TextBox6" runat="server" BackColor="#FFCCFF"></asp:TextBox>
                </p>
                <p class="auto-style1">
                    Nuevo Plan:
                <asp:DropDownList
                    ID="DropDownList1"
                    runat="server"
                    DataSourceID="SqlDataSource2"
                    DataTextField="descripcion"
                    DataValueField="id_plan" BackColor="#FFCCFF">
                </asp:DropDownList>
                </p>

                <p class="auto-style1">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" BackColor="#FF99CC" Height="38px" Width="100px" />
                </p>
        </div>

        <asp:Label ID="Label2" runat="server"></asp:Label>

        <asp:SqlDataSource
            ID="SqlDataSource2"
            runat="server"
            ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>"
            SelectCommand="SELECT * FROM [Planes]"></asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
    </form>
</body>
</html>
