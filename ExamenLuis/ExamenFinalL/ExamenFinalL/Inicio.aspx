<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ExamenFinalL.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            INICIO DE TIENDA
            <br />
            <br />
            <asp:Button ID="BTNUSU" runat="server" OnClick="BTNUSU_Click" Text="USUARIOS" />
            <br />
            <asp:Button ID="BTNPRODU" runat="server" OnClick="BTNPRODU_Click" Text="PRODUCTOS" />
            <br />
            <asp:Button ID="BTNBORRARPRO" runat="server" OnClick="BTNBORRARPRO_Click" Text="BORRAR PRODUCTO" />
            <br />
            <asp:Button ID="BTNACTU" runat="server" OnClick="BTNACTU_Click" Text="ACTUALICE PRODUCTOS" />
            <br />
            <asp:Button ID="BTNAÑADA" runat="server" OnClick="BTNAÑADA_Click" Text="AÑADA PRODUCTOS" />
        </div>
    </form>
</body>
</html>
