<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="Cotizacion.aspx.cs" Inherits="ProyectoFase2.Cotizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="margin-left: 40px">
        Costo&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCosto" runat="server" Width="169px"></asp:TextBox>
    </p>
    <p style="margin-left: 40px">
        Peso&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPeso" runat="server" Width="171px"></asp:TextBox>
    </p>
    <p style="margin-left: 40px">
        Categoria de Impuesto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="0">Celulares</asp:ListItem>
            <asp:ListItem Value="0.10">Cables</asp:ListItem>
            <asp:ListItem Value="0">Camara Fotografica</asp:ListItem>
            <asp:ListItem Value="0.10">Cartucho de Tinta (Simple)</asp:ListItem>
            <asp:ListItem Value="0">Cartucho de Tinta C/Chip</asp:ListItem>
            <asp:ListItem Value="0.15">Catalogos</asp:ListItem>
            <asp:ListItem Value="0.10">CD&#39;S</asp:ListItem>
            <asp:ListItem Value="0">Celulares</asp:ListItem>
            <asp:ListItem Value="0.05">Cinta de Impresora</asp:ListItem>
            <asp:ListItem Value="0">Computadoras</asp:ListItem>
            <asp:ListItem Value="0.15">Consola de Video Juegos</asp:ListItem>
            <asp:ListItem Value="0.15">Cosmeticos</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="margin-left: 40px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Cotizar" />
    </p>
    <p style="height: 215px; margin-left: 40px">
        Total&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTotal" runat="server" Width="171px"></asp:TextBox>
    </p>
</asp:Content>
