<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BProductos.aspx.cs" Inherits="ExamenFinalL.BProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Borrar Productos</title>
</head>
<body>
    <form id="form1" runat="server">
        BORRAR PRODUCTOS<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
                <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                <asp:BoundField DataField="Ccsto" HeaderText="Ccsto" SortExpression="Ccsto" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:exfinalConnectionString %>" DeleteCommand="	   delete  Productos where descripcion = @des
" SelectCommand="SELECT * FROM [Productos]">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TXTBORRAR" Name="des" PropertyName="Text" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <br />
        ARTICULO QUE DESEA BORRAR
        <asp:TextBox ID="TXTBORRAR" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="BBORRAR" runat="server" OnClick="BBORRAR_Click" Text="BORRAR" />
        <asp:Button ID="BCERRAR" runat="server" OnClick="BCERRAR_Click" Text="CERRAR" />
    </form>
</body>
</html>
