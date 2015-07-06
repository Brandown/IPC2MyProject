<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportePaquete.aspx.cs" Inherits="ProyectoFase2.ReportePaquete" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Reporte de Paquetes por Categoria" />
&nbsp;<br />
        <br />
        <asp:Button ID="btnSucursal" runat="server" OnClick="Button2_Click" Text="Reporte de Paquetes por Sucursal" Width="306px" />
    
        <br />
        <br />
        <asp:Button ID="btnAdmin1" runat="server" OnClick="btnAdmin_Click" Text="Reporte Administrativo Part 1" Width="305px" />
        <br />
        <br />
        <asp:Button ID="btnAdmin2" runat="server" OnClick="btnAdmin2_Click" Text="Reporte Administrativo Part 2" Width="302px" />
        <br />
        <br />
        <asp:Button ID="btnTop" runat="server" OnClick="btnTop_Click" Text="Reporte Top 5" Width="304px" />
    
        <br />
        <br />
        <asp:Button ID="btnFactura" runat="server" OnClick="btnFactura_Click" Text="Generar Factura" Width="303px" />
    
    </div>
    </form>
</body>
</html>
