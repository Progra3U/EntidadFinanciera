using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using _04Entidades;
using _02LogicaNegocios;

namespace _00Servicios
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Servicios" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Servicios.svc or Servicios.svc.cs at the Solution Explorer and start debugging.
    public class Servicios : IServicios
    {

        #region BancoExterno
        public void BancoExternoAgregar(BancoExteno externo)
        {
            _02LogicaNegocios.LogicaNegocios.BancoExternoAgregar(externo);
        }
        public void BancoExternoModificar(BancoExteno externo)
        {
            _02LogicaNegocios.LogicaNegocios.BancoExternoModificar(externo);
        }
        public void BancoExternoEliminar(BancoExteno externo)
        {
            _02LogicaNegocios.LogicaNegocios.BancoExternoEliminar(externo);
        }
        #endregion

        #region Clientes
        public void ClienteAgregar(Cliente cliente)
        {
            _02LogicaNegocios.LogicaNegocios.ClienteAgregar(cliente);
        }
        public void ClienteModificar(Cliente cliente)
        {
            _02LogicaNegocios.LogicaNegocios.ClienteModificar(cliente);
        }
        public void ClienteEliminar(Cliente cliente)
        {
            _02LogicaNegocios.LogicaNegocios.ClienteEliminar(cliente);
        }
        #endregion

        #region Servicios
        public void ServicioAgregar(Servicio servicio)
        {
            _02LogicaNegocios.LogicaNegocios.ServicioAgregar(servicio);
        }
        public void ServicioModificar(Servicio servicio)
        {
            _02LogicaNegocios.LogicaNegocios.ServicioModificar(servicio);
        }
        public void ServicioEliminar(Servicio servicio)
        {
            _02LogicaNegocios.LogicaNegocios.ServicioEliminar(servicio);
        }
        #endregion

        #region Usuarios
        public void UsuarioAgregar(Usuario usuario)
        {
            _02LogicaNegocios.LogicaNegocios.UsuarioAgregar(usuario);
        }
        public void UsuarioModificar(Usuario usuario)
        {
            _02LogicaNegocios.LogicaNegocios.UsuarioModificar(usuario);
        }
        public void UsuarioEliminar(Usuario usuario)
        {
            _02LogicaNegocios.LogicaNegocios.UsuarioEliminar(usuario);
        }
        #endregion

        #region Otros
        public void AbonoRetiroInterno(Cliente abonoRetiroI)
        {
            _02LogicaNegocios.LogicaNegocios.AbonoRetiroInterno(abonoRetiroI);
        }
        public void AbonoRetiroExterno(Cliente abonoRetiroE)
        {
            _02LogicaNegocios.LogicaNegocios.AbonoRetiroExterno(abonoRetiroE);
        }
        public List<Cliente> MontosGlobales()
        {
            return _02LogicaNegocios.LogicaNegocios.MontosGlobales();
        }
        public List<Transaccion> EstadosdeCuenta(Transaccion EstCuenta)
        {
            return _02LogicaNegocios.LogicaNegocios.EstadosdeCuenta(EstCuenta);
        }
        public List<Usuario> VerEstadoUsuarios(Usuario usuario)
        {
            return _02LogicaNegocios.LogicaNegocios.VerEstadoUsuarios(usuario);
        }
        public List<Cliente> VerEstadoClientes(Cliente cliente)
        {
            return _02LogicaNegocios.LogicaNegocios.VerEstadoClientes(cliente);
        }
        public List<Transaccion> TransaccionesRegistradas()
        {
            return _02LogicaNegocios.LogicaNegocios.TransaccionesRegistradas();
        }
        #endregion
    }
}
