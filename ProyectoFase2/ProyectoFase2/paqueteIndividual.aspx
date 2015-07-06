<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="paqueteIndividual.aspx.cs" Inherits="ProyectoFase2.paqueteIndividual" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Numero de Paquete:"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="txtPaquete" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Foto:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnFoto" runat="server" OnClick="btnFoto_Click" Text="Guardar Foto" />
    </p>
    <p>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="txtSubirPrecio" runat="server" Width="16px"></asp:TextBox>
&nbsp;&nbsp;Precio&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
&nbsp;
        <asp:Button ID="btnPrecio" runat="server" OnClick="btnPrecio_Click" Text="Agregar Precio" />
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" style="text-align: center">
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/Imagenes/{0}" HeaderText="Imagen">
                    <ControlStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="¿Confirma?" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtDirector" runat="server" Width="16px"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpConnectionString %>" SelectCommand="SELECT [Nombre], [Estado], [Precio], [Foto] FROM [Paquete] WHERE ([IdPaquete] = @IdPaquete)">
            <SelectParameters>
                <asp:SessionParameter Name="IdPaquete" SessionField="aux" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
