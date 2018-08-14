<%@ Page Title="" Language="C#" MasterPageFile="~/SitioWeb/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="_01Presentacion.SitioWeb.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<body id="body">
	<div class="sidebar">
		<h2>Menu</h2>
		<ul>
            <li><a href="../Index.aspx">Inicio</a></li>
            <li><a href="SubPages/Administradores/A_Clientes.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Clientes</a></li>
            <li><a href="SubPages/Administradores/A_EstadosdeCuenta.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Estados de Cuenta</a></li>
            <li><a href="#">Transferencias</a>
                <ul>
			        <li><a href="SubPages/Clientes/C_TransferenciasI.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Internas</a></li>
			        <li><a href="SubPages/Clientes/C_TransferenciasE.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Externas</a></li>
		        </ul>
            </li>
            <li><a href="#">Pago de Servicios</a>
                <ul>
			        <li><a href="SubPages/Clientes/C_Agua.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Agua</a></li>
			        <li><a href="SubPages/Clientes/C_Luz.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Luz</a></li>
			        <li><a href="SubPages/Clientes/C_Telefono.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Telefono</a></li>
                    <li><a href="SubPages/Clientes/C_TV.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">TV</a></li>
                    <li><a href="SubPages/Clientes/C_Internet.aspx" target="_blank" onclick="window.open(this.href, this.target, 'width=960,height=900,top=50,left=500'); return false;">Internet</a></li>
		        </ul>
            </li>
			<li><a >Salir</a></li>
		</ul>
	</div>
	<div class="Central">
        <h2>Sesion de Usuario</h2>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p>
		<p>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
			cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
			proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		</p>
	</div>
</body>
</asp:Content>
