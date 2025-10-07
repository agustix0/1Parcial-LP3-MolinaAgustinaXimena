<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPlanes.aspx.cs" Inherits="_1Parcial_LP3_MolinaAgustinaXimena.AltaPlanes" %>

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
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo3 {
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo4 {
            background-color: #66FFFF;
            font-family: Arial, Helvetica, sans-serif;
        }
        .nuevoEstilo5 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <h1 class="auto-style1"> <span class="nuevoEstilo4">Alta de Planes</span></h1>
            <p class="nuevoEstilo5"> <span class="auto-style1">Nombre del Plan:</span><asp:TextBox ID="TextBox1" runat="server" BackColor="#66FFFF" CssClass="auto-style1"></asp:TextBox>
            </p>
            <p class="nuevoEstilo5"> <span class="auto-style1">Descripcion:</span><asp:TextBox ID="TextBox2" runat="server" BackColor="#66FFFF" CssClass="auto-style1"></asp:TextBox>
            </p>
            <p class="nuevoEstilo5"> <span class="auto-style1">Precio:</span><asp:TextBox ID="TextBox3" runat="server" BackColor="#66FFFF" CssClass="auto-style1"></asp:TextBox>
            </p>
            <p class="nuevoEstilo5"> 
                <asp:Button ID="Button1" runat="server" BackColor="#3399FF" CssClass="auto-style1" Height="46px" OnClick="Button1_Click" Text="Alta" Width="79px" />
            </p>
            <p class="nuevoEstilo5"> 
                <asp:Label ID="Label1" runat="server" CssClass="auto-style1"></asp:Label>
            </p>
        </div>
        <span class="nuevoEstilo5">
        <br class="auto-style1" />
        </span>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaClientes.aspx">Pantalla Principal</asp:HyperLink>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Parcial1ConnectionString %>" SelectCommand="SELECT * FROM [Planes]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
