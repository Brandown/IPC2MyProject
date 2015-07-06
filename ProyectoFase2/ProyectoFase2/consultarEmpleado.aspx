<%@ Page Title="" Language="C#" MasterPageFile="~/MasterEmpleado.Master" AutoEventWireup="true" CodeBehind="consultarEmpleado.aspx.cs" Inherits="ProyectoFase2.consultarEmpleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="margin-left: 240px">
        &nbsp;&nbsp;Consulta de Equipo de Trabajo&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtConsulta" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnConsultar" runat="server" OnClick="btnConsultar_Click" Text="Button" />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="IdEmpleado">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" SortExpression="Sueldo" />
                <asp:BoundField DataField="Sucursal" HeaderText="Sucursal" SortExpression="Sucursal" />
                <asp:BoundField DataField="Departamento" HeaderText="Departamento" SortExpression="Departamento" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Domicilio" HeaderText="Domicilio" SortExpression="Domicilio" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:BoundField DataField="IdEmpleado" HeaderText="IdEmpleado" InsertVisible="False" ReadOnly="True" SortExpression="IdEmpleado" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuetzalExpConnectionString %>" SelectCommand="SELECT [Apellidos], [Nombres], [Sueldo], [Sucursal], [Departamento], [Telefono], [Domicilio], [Email], [Usuario], [Estado], [IdEmpleado] FROM [Empleado] WHERE ([IdEmpleado] = @IdEmpleado)" DeleteCommand="DELETE FROM [Empleado] WHERE [IdEmpleado] = @IdEmpleado" InsertCommand="INSERT INTO [Empleado] ([Apellidos], [Nombres], [Sueldo], [Sucursal], [Departamento], [Telefono], [Domicilio], [Email], [Usuario], [Estado]) VALUES (@Apellidos, @Nombres, @Sueldo, @Sucursal, @Departamento, @Telefono, @Domicilio, @Email, @Usuario, @Estado)" UpdateCommand="UPDATE [Empleado] SET [Apellidos] = @Apellidos, [Nombres] = @Nombres, [Sueldo] = @Sueldo, [Sucursal] = @Sucursal, [Departamento] = @Departamento, [Telefono] = @Telefono, [Domicilio] = @Domicilio, [Email] = @Email, [Usuario] = @Usuario, [Estado] = @Estado WHERE [IdEmpleado] = @IdEmpleado">
            <DeleteParameters>
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Sueldo" Type="Double" />
                <asp:Parameter Name="Sucursal" Type="String" />
                <asp:Parameter Name="Departamento" Type="String" />
                <asp:Parameter Name="Telefono" Type="Int32" />
                <asp:Parameter Name="Domicilio" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Estado" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="IdEmpleado" SessionField="tempo" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Sueldo" Type="Double" />
                <asp:Parameter Name="Sucursal" Type="String" />
                <asp:Parameter Name="Departamento" Type="String" />
                <asp:Parameter Name="Telefono" Type="Int32" />
                <asp:Parameter Name="Domicilio" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="Estado" Type="String" />
                <asp:Parameter Name="IdEmpleado" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
