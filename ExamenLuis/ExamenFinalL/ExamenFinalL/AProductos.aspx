<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AProductos.aspx.cs" Inherits="ExamenFinalL.AProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Actualizar Productos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ACTUALICE PRODUCTOS<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:exfinalConnectionString %>" SelectCommand="SELECT * FROM [Productos]" UpdateCommand="update Productos set  cantidad=@canti, precio=@precioo, ccsto =@costoo 
 where descripcion = @des
">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TXTCANT" Name="canti" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TXTPRECIO" Name="precioo" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TXTCOST" Name="costoo" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TXTPROD" Name="des" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            Producto&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTPROD" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            Cantidad&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TXTCANT" runat="server"></asp:TextBox>
            <br />
            Precio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTPRECIO" runat="server"></asp:TextBox>
            <br />
            Costo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TXTCOST" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Button ID="BACTU" runat="server" Text="ACTUALIZAR" OnClick="BACTU_Click" />
&nbsp;<asp:Button ID="BCERRAR" runat="server" OnClick="BCERRAR_Click" Text="CERRRAR" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
