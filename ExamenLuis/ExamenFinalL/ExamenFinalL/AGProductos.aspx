<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AGProductos.aspx.cs" Inherits="ExamenFinalL.AGProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Productos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            AGREGAR PRODUCTOS<br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" GridLines="Horizontal">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:exfinalConnectionString %>" InsertCommand="	 INSERT INTO Productos VALUES (@desc, @canti,@precioo,@costoo)
" SelectCommand="SELECT * FROM [Productos]">
            <InsertParameters>
                <asp:ControlParameter ControlID="TXTPROD" Name="desc" PropertyName="Text" />
                <asp:ControlParameter ControlID="TXTCANT" Name="canti" PropertyName="Text" />
                <asp:ControlParameter ControlID="TXTPRECIO" Name="precioo" PropertyName="Text" />
                <asp:ControlParameter ControlID="TXTCOST" Name="costoo" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        Producto&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTPROD" runat="server"></asp:TextBox>
        <br />
        Cantidad&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTCANT" runat="server"></asp:TextBox>
        <br />
        Precio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTPRECIO" runat="server"></asp:TextBox>
        <br />
        Costo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TXTCOST" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="BTNAGREGAR" runat="server" Text="AGREGAR" OnClick="BTNAGREGAR_Click" />
&nbsp;<asp:Button ID="BTNVOLVER" runat="server" Height="24px" OnClick="BTNVOLVER_Click" Text="VOLVER" Width="93px" />
    </form>
</body>
</html>
