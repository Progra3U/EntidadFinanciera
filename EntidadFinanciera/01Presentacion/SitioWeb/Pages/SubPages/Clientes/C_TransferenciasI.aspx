<%@ Page Title="" Language="C#" MasterPageFile="~/SitioWeb/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="C_TransferenciasI.aspx.cs" Inherits="_01Presentacion.SitioWeb.Pages.SubPages.Clientes.C_Transferencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body>
    <div id="wrap">
        <h2 id="titulo">Transferencias Internas</h2>
        <section id="FormUsuarios">    
            <form>
                <asp:Label class="label"  runat="server" Text="Label"  For="Cuenta">Numero de cuenta:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="text" ID="Cuenta" pattern="[0-9]{3}[-][0-9]{7}[-][0-9]{1}" MaxLength="12" placeholder="000-0000000-0" required runat="server"></asp:TextBox>
                <asp:Label class="label" runat="server" For="Monto">Monto a Transferir:</asp:Label>
                <asp:TextBox class="textBox" size="30" type="number" ID="Monto" min="2"  placeholder="Minimo  $2" required runat="server"></asp:TextBox> 
                <asp:Label class="label" runat="server" For="Contrasena">Contrasena:</asp:Label>                
            </form>
            <asp:Button class="botones" ID="Transferir" runat="server" Text="Transferir" OnClick="Transferir_Click" />
        </section>
    </div>
</body>
</asp:Content>
