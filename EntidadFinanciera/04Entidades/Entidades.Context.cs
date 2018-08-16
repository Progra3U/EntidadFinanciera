﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _04Entidades
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Objects;
    using System.Data.Objects.DataClasses;
    using System.Linq;
    
    public partial class EntidadFinancieraEntities : DbContext
    {
        public EntidadFinancieraEntities()
            : base("name=EntidadFinancieraEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<BancoExteno> BancoExtenoes { get; set; }
        public DbSet<Cliente> Clientes { get; set; }
        public DbSet<Servicio> Servicios { get; set; }
        public DbSet<Transaccion> Transaccions { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
    
        public virtual int pa_BancoExteno_Delete(string cuentaExterna)
        {
            var cuentaExternaParameter = cuentaExterna != null ?
                new ObjectParameter("CuentaExterna", cuentaExterna) :
                new ObjectParameter("CuentaExterna", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_BancoExteno_Delete", cuentaExternaParameter);
        }
    
        public virtual int pa_BancoExteno_Insert(string cuentaExterna, string detalleTrans, Nullable<int> monto)
        {
            var cuentaExternaParameter = cuentaExterna != null ?
                new ObjectParameter("CuentaExterna", cuentaExterna) :
                new ObjectParameter("CuentaExterna", typeof(string));
    
            var detalleTransParameter = detalleTrans != null ?
                new ObjectParameter("DetalleTrans", detalleTrans) :
                new ObjectParameter("DetalleTrans", typeof(string));
    
            var montoParameter = monto.HasValue ?
                new ObjectParameter("Monto", monto) :
                new ObjectParameter("Monto", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_BancoExteno_Insert", cuentaExternaParameter, detalleTransParameter, montoParameter);
        }
    
        public virtual int pa_BancoExteno_Update(string cuentaExterna, string detalleTrans, Nullable<int> monto)
        {
            var cuentaExternaParameter = cuentaExterna != null ?
                new ObjectParameter("CuentaExterna", cuentaExterna) :
                new ObjectParameter("CuentaExterna", typeof(string));
    
            var detalleTransParameter = detalleTrans != null ?
                new ObjectParameter("DetalleTrans", detalleTrans) :
                new ObjectParameter("DetalleTrans", typeof(string));
    
            var montoParameter = monto.HasValue ?
                new ObjectParameter("Monto", monto) :
                new ObjectParameter("Monto", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_BancoExteno_Update", cuentaExternaParameter, detalleTransParameter, montoParameter);
        }
    
        public virtual int pa_Cliente_AbonoRetiroExterno(string cuentaSimpe, string descripcion, Nullable<int> saldoCuenta)
        {
            var cuentaSimpeParameter = cuentaSimpe != null ?
                new ObjectParameter("CuentaSimpe", cuentaSimpe) :
                new ObjectParameter("CuentaSimpe", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("Descripcion", descripcion) :
                new ObjectParameter("Descripcion", typeof(string));
    
            var saldoCuentaParameter = saldoCuenta.HasValue ?
                new ObjectParameter("SaldoCuenta", saldoCuenta) :
                new ObjectParameter("SaldoCuenta", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Cliente_AbonoRetiroExterno", cuentaSimpeParameter, descripcionParameter, saldoCuentaParameter);
        }
    
        public virtual int pa_Cliente_AbonoRetiroInterno(string cuentaInterna, string descripcion, Nullable<int> saldoCuenta)
        {
            var cuentaInternaParameter = cuentaInterna != null ?
                new ObjectParameter("CuentaInterna", cuentaInterna) :
                new ObjectParameter("CuentaInterna", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("Descripcion", descripcion) :
                new ObjectParameter("Descripcion", typeof(string));
    
            var saldoCuentaParameter = saldoCuenta.HasValue ?
                new ObjectParameter("SaldoCuenta", saldoCuenta) :
                new ObjectParameter("SaldoCuenta", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Cliente_AbonoRetiroInterno", cuentaInternaParameter, descripcionParameter, saldoCuentaParameter);
        }
    
        public virtual int pa_Cliente_Delete(Nullable<int> cedula)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("Cedula", cedula) :
                new ObjectParameter("Cedula", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Cliente_Delete", cedulaParameter);
        }
    
        public virtual int pa_Cliente_Insert(Nullable<int> cedula, string nombre, string apellido1, string apellido2, Nullable<System.DateTime> fechaNac, string telefono, string correo, string provincia, string direccionExac, Nullable<int> saldoCuenta, string contrasena, string cuentaInterna, string cuentaSimpe, string descripcion, Nullable<bool> estado)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("cedula", cedula) :
                new ObjectParameter("cedula", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var apellido1Parameter = apellido1 != null ?
                new ObjectParameter("Apellido1", apellido1) :
                new ObjectParameter("Apellido1", typeof(string));
    
            var apellido2Parameter = apellido2 != null ?
                new ObjectParameter("Apellido2", apellido2) :
                new ObjectParameter("Apellido2", typeof(string));
    
            var fechaNacParameter = fechaNac.HasValue ?
                new ObjectParameter("FechaNac", fechaNac) :
                new ObjectParameter("FechaNac", typeof(System.DateTime));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("Telefono", telefono) :
                new ObjectParameter("Telefono", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("Correo", correo) :
                new ObjectParameter("Correo", typeof(string));
    
            var provinciaParameter = provincia != null ?
                new ObjectParameter("Provincia", provincia) :
                new ObjectParameter("Provincia", typeof(string));
    
            var direccionExacParameter = direccionExac != null ?
                new ObjectParameter("DireccionExac", direccionExac) :
                new ObjectParameter("DireccionExac", typeof(string));
    
            var saldoCuentaParameter = saldoCuenta.HasValue ?
                new ObjectParameter("SaldoCuenta", saldoCuenta) :
                new ObjectParameter("SaldoCuenta", typeof(int));
    
            var contrasenaParameter = contrasena != null ?
                new ObjectParameter("Contrasena", contrasena) :
                new ObjectParameter("Contrasena", typeof(string));
    
            var cuentaInternaParameter = cuentaInterna != null ?
                new ObjectParameter("CuentaInterna", cuentaInterna) :
                new ObjectParameter("CuentaInterna", typeof(string));
    
            var cuentaSimpeParameter = cuentaSimpe != null ?
                new ObjectParameter("CuentaSimpe", cuentaSimpe) :
                new ObjectParameter("CuentaSimpe", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("Descripcion", descripcion) :
                new ObjectParameter("Descripcion", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Cliente_Insert", cedulaParameter, nombreParameter, apellido1Parameter, apellido2Parameter, fechaNacParameter, telefonoParameter, correoParameter, provinciaParameter, direccionExacParameter, saldoCuentaParameter, contrasenaParameter, cuentaInternaParameter, cuentaSimpeParameter, descripcionParameter, estadoParameter);
        }
    
        public virtual int pa_Cliente_Update(Nullable<int> cedula, string nombre, string apellido1, string apellido2, Nullable<System.DateTime> fechaNac, string telefono, string correo, string provincia, string direccionExac, Nullable<int> saldoCuenta, string contrasena, string cuentaInterna, string cuentaSimpe, string descripcion, Nullable<bool> estado)
        {
            var cedulaParameter = cedula.HasValue ?
                new ObjectParameter("Cedula", cedula) :
                new ObjectParameter("Cedula", typeof(int));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var apellido1Parameter = apellido1 != null ?
                new ObjectParameter("Apellido1", apellido1) :
                new ObjectParameter("Apellido1", typeof(string));
    
            var apellido2Parameter = apellido2 != null ?
                new ObjectParameter("Apellido2", apellido2) :
                new ObjectParameter("Apellido2", typeof(string));
    
            var fechaNacParameter = fechaNac.HasValue ?
                new ObjectParameter("FechaNac", fechaNac) :
                new ObjectParameter("FechaNac", typeof(System.DateTime));
    
            var telefonoParameter = telefono != null ?
                new ObjectParameter("Telefono", telefono) :
                new ObjectParameter("Telefono", typeof(string));
    
            var correoParameter = correo != null ?
                new ObjectParameter("Correo", correo) :
                new ObjectParameter("Correo", typeof(string));
    
            var provinciaParameter = provincia != null ?
                new ObjectParameter("Provincia", provincia) :
                new ObjectParameter("Provincia", typeof(string));
    
            var direccionExacParameter = direccionExac != null ?
                new ObjectParameter("DireccionExac", direccionExac) :
                new ObjectParameter("DireccionExac", typeof(string));
    
            var saldoCuentaParameter = saldoCuenta.HasValue ?
                new ObjectParameter("SaldoCuenta", saldoCuenta) :
                new ObjectParameter("SaldoCuenta", typeof(int));
    
            var contrasenaParameter = contrasena != null ?
                new ObjectParameter("Contrasena", contrasena) :
                new ObjectParameter("Contrasena", typeof(string));
    
            var cuentaInternaParameter = cuentaInterna != null ?
                new ObjectParameter("CuentaInterna", cuentaInterna) :
                new ObjectParameter("CuentaInterna", typeof(string));
    
            var cuentaSimpeParameter = cuentaSimpe != null ?
                new ObjectParameter("CuentaSimpe", cuentaSimpe) :
                new ObjectParameter("CuentaSimpe", typeof(string));
    
            var descripcionParameter = descripcion != null ?
                new ObjectParameter("Descripcion", descripcion) :
                new ObjectParameter("Descripcion", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Cliente_Update", cedulaParameter, nombreParameter, apellido1Parameter, apellido2Parameter, fechaNacParameter, telefonoParameter, correoParameter, provinciaParameter, direccionExacParameter, saldoCuentaParameter, contrasenaParameter, cuentaInternaParameter, cuentaSimpeParameter, descripcionParameter, estadoParameter);
        }
    
        public virtual ObjectResult<pa_EstadosdeCuenta_Result> pa_EstadosdeCuenta()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pa_EstadosdeCuenta_Result>("pa_EstadosdeCuenta");
        }
    
        public virtual ObjectResult<pa_Globales_Result> pa_Globales()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pa_Globales_Result>("pa_Globales");
        }
    
        public virtual int pa_Servicio_Delete(string descServicio)
        {
            var descServicioParameter = descServicio != null ?
                new ObjectParameter("DescServicio", descServicio) :
                new ObjectParameter("DescServicio", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Servicio_Delete", descServicioParameter);
        }
    
        public virtual int pa_Servicio_Insert(string descServicio, Nullable<bool> estado)
        {
            var descServicioParameter = descServicio != null ?
                new ObjectParameter("DescServicio", descServicio) :
                new ObjectParameter("DescServicio", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Servicio_Insert", descServicioParameter, estadoParameter);
        }
    
        public virtual int pa_Servicio_Update(string descServicio, Nullable<bool> estado)
        {
            var descServicioParameter = descServicio != null ?
                new ObjectParameter("DescServicio", descServicio) :
                new ObjectParameter("DescServicio", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Servicio_Update", descServicioParameter, estadoParameter);
        }
    
        public virtual int pa_TransaccionesRegistradas()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_TransaccionesRegistradas");
        }
    
        public virtual int pa_Usuario_Delete(string usuario)
        {
            var usuarioParameter = usuario != null ?
                new ObjectParameter("Usuario", usuario) :
                new ObjectParameter("Usuario", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Usuario_Delete", usuarioParameter);
        }
    
        public virtual int pa_Usuario_Insert(string usuario, string nombre, string contrasena, Nullable<bool> estado)
        {
            var usuarioParameter = usuario != null ?
                new ObjectParameter("Usuario", usuario) :
                new ObjectParameter("Usuario", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var contrasenaParameter = contrasena != null ?
                new ObjectParameter("Contrasena", contrasena) :
                new ObjectParameter("Contrasena", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Usuario_Insert", usuarioParameter, nombreParameter, contrasenaParameter, estadoParameter);
        }
    
        public virtual int pa_Usuario_Update(string usuario, string nombre, string contrasena, Nullable<bool> estado)
        {
            var usuarioParameter = usuario != null ?
                new ObjectParameter("Usuario", usuario) :
                new ObjectParameter("Usuario", typeof(string));
    
            var nombreParameter = nombre != null ?
                new ObjectParameter("Nombre", nombre) :
                new ObjectParameter("Nombre", typeof(string));
    
            var contrasenaParameter = contrasena != null ?
                new ObjectParameter("Contrasena", contrasena) :
                new ObjectParameter("Contrasena", typeof(string));
    
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("pa_Usuario_Update", usuarioParameter, nombreParameter, contrasenaParameter, estadoParameter);
        }
    
        public virtual ObjectResult<pa_VerEstadoClientes_Result> pa_VerEstadoClientes(Nullable<bool> estado)
        {
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pa_VerEstadoClientes_Result>("pa_VerEstadoClientes", estadoParameter);
        }
    
        public virtual ObjectResult<pa_VerEstadoUsuarios_Result> pa_VerEstadoUsuarios(Nullable<bool> estado)
        {
            var estadoParameter = estado.HasValue ?
                new ObjectParameter("Estado", estado) :
                new ObjectParameter("Estado", typeof(bool));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<pa_VerEstadoUsuarios_Result>("pa_VerEstadoUsuarios", estadoParameter);
        }
    }
}