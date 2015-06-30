<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEmpleado.Master" AutoEventWireup="true" CodeBehind="consultarCobro.aspx.cs" Inherits="ProyectoFase2.consultarCobro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
&nbsp; &nbsp;&nbsp;Consultar Cobros&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCobro" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCobro" runat="server" OnClick="btnCobro_Click" Text="Consultar" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Nombre" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" />
                <asp:BoundField DataField="Porcentaje" HeaderText="Porcentaje" SortExpression="Porcentaje" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionQuetzal %>" DeleteCommand="DELETE FROM [Impuesto] WHERE [Nombre] = @Nombre" InsertCommand="INSERT INTO [Impuesto] ([Nombre], [Porcentaje]) VALUES (@Nombre, @Porcentaje)" SelectCommand="SELECT [Nombre], [Porcentaje] FROM [Impuesto] WHERE ([Nombre] = @Nombre)" UpdateCommand="UPDATE [Impuesto] SET [Porcentaje] = @Porcentaje WHERE [Nombre] = @Nombre">
            <DeleteParameters>
                <asp:Parameter Name="Nombre" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Porcentaje" Type="Double" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Nombre" SessionField="aux" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Porcentaje" Type="Double" />
                <asp:Parameter Name="Nombre" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
