<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="ConsultaPedido.aspx.cs" Inherits="ProyectoFase2.ConsultaPedido" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ingresa tu numero de Pedido:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtPedido" runat="server" OnTextChanged="txtPedido_TextChanged"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" Width="87px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:GridView ID="GVPedido" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyNames="IdPedido" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="DescripcionCategoria" HeaderText="DescripcionCategoria" SortExpression="DescripcionCategoria" />
                <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:BoundField DataField="IdPedido" HeaderText="IdPedido" InsertVisible="False" ReadOnly="True" SortExpression="IdPedido" />
                <asp:BoundField DataField="EstadoActual" HeaderText="EstadoActual" SortExpression="EstadoActual" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionQuetzal %>" DeleteCommand="DELETE FROM [Pedido] WHERE [IdPedido] = @IdPedido" InsertCommand="INSERT INTO [Pedido] ([DescripcionCategoria], [Peso], [Precio], [EstadoActual]) VALUES (@DescripcionCategoria, @Peso, @Precio, @EstadoActual)" SelectCommand="SELECT [DescripcionCategoria], [Peso], [Precio], [IdPedido], [EstadoActual] FROM [Pedido] WHERE ([IdCasi] = @IdCasi)" UpdateCommand="UPDATE [Pedido] SET [DescripcionCategoria] = @DescripcionCategoria, [Peso] = @Peso, [Precio] = @Precio, [EstadoActual] = @EstadoActual WHERE [IdPedido] = @IdPedido">
            <DeleteParameters>
                <asp:Parameter Name="IdPedido" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="DescripcionCategoria" Type="String" />
                <asp:Parameter Name="Peso" Type="Double" />
                <asp:Parameter Name="Precio" Type="Double" />
                <asp:Parameter Name="EstadoActual" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="IdCasi" SessionField="Temporal" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="DescripcionCategoria" Type="String" />
                <asp:Parameter Name="Peso" Type="Double" />
                <asp:Parameter Name="Precio" Type="Double" />
                <asp:Parameter Name="EstadoActual" Type="String" />
                <asp:Parameter Name="IdPedido" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
