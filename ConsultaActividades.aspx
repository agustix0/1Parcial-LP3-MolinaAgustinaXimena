<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultaActividades.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.ConsultaActividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #FFCCCC;
        }
        .nuevoEstilo2 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style1 {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #FFCCCC;
            color: #FF6600;
        }
        .auto-style2 {
            color: #FF6600;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1> <span class="auto-style1">Consulta de Actividades</span>  </h1>
            <p class="nuevoEstilo2"> <span class="auto-style2">Actividad: </span>
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFCCCC" CssClass="auto-style2" DataSourceID="SqlDataSource1" DataTextField="nombre_actividad" DataValueField="id_actividad" Height="17px" Width="135px">
                </asp:DropDownList>
            </p>
            <p class="nuevoEstilo2"> 
                <asp:Button ID="Button1" runat="server" BackColor="#FFCC99" Height="40px" OnClick="Button1_Click" Text="Consultar" Width="93px" />
            </p>
            <p class="nuevoEstilo2"> 
                <asp:Label ID="Label1" runat="server" style="color: #FF6600"></asp:Label>
            </p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT [id_actividad], [nombre_actividad], [descripcion], [dias], [horario] FROM [Actividades]"></asp:SqlDataSource>
        <p class="nuevoEstilo2">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT id_actividad, nombre_actividad, descripcion, dias, horario FROM Actividades WHERE (id_actividad = @id_actividad)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="id_actividad" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
        </p>
    </form>
</body>
</html>
