<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaActividades.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.AltaActividades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #0000FF;
        }
        .nuevoEstilo1 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo2 {
            background-color: #66FFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="nuevoEstilo1">
        <div>
            <h1 class="auto-style1"> <span class="nuevoEstilo2">Alta de Actividades</span></h1>
            <p class="auto-style1"> &nbsp;</p>
            <p class="auto-style1"> Nombre de la Actividad:<asp:TextBox ID="TextBox1" runat="server" BackColor="#66FFFF"></asp:TextBox>
            </p>
            <p class="auto-style1"> Descripcion:<asp:TextBox ID="TextBox2" runat="server" BackColor="#66FFFF"></asp:TextBox>
            </p>
            <p class="auto-style1"> Dias de la Semana:<asp:TextBox ID="TextBox3" runat="server" BackColor="#66FFFF"></asp:TextBox>
            </p>
            <p class="auto-style1"> Horario:<asp:TextBox ID="TextBox4" runat="server" BackColor="#66FFFF"></asp:TextBox>
            </p>
            <p class="auto-style1"> Plan Asociado:
                <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCFFFF" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="id_plan" Height="16px" Width="138px">
                </asp:DropDownList>
            </p>
            <p class="auto-style1"> 
                <asp:Button ID="Button1" runat="server" BackColor="#3399FF" Height="46px" OnClick="Button1_Click" Text="Alta" Width="79px" />
            </p>
            <p class="auto-style1"> &nbsp;</p>
            <p class="auto-style1"> 
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT * FROM [Actividades]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT * FROM [Planes]"></asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
    </form>
</body>
</html>
