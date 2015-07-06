<%@ Page Title="" Language="C#" MasterPageFile="~/MasterCliente.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ProyectoFase2.Account.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;<asp:TextBox ID="txt1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
    </p>
    <br />
    <br />
    <asp:Button ID="btn1" runat="server" OnClick="btn1_Click" Text="Button" />
</asp:Content>
