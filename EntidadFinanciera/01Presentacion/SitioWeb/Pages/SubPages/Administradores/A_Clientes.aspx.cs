using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01Presentacion.SitioWeb.Pages.SubPages.Administradores
{   
    
    public partial class A_Clientes : System.Web.UI.Page
    {
        #region Limpiar
        public void Limpiar()
        {
            Cedula.Text = "";
            Nombre.Text = "";
            PrimerApellido.Text = "";
            SegundoApellido.Text = "";
            FechaNac.Text = "";
            Telefono.Text = "";
            Correo.Text = "";
            Direccion.Text = "";
            Monto.Text = "";
            Contrasena.Text = "";
            Contrasena2.Text = "";
        }
        #endregion

        #region Cuentas Simpe y normal
        public string Cuenta()
        {
            Random randm = new Random();
            int primer = randm.Next(1, 10);
            int segundo = randm.Next(1000000, 9999999);
            int tercer = randm.Next(1, 10);

            return "00" + primer + "-" + segundo + "-" + tercer;
        }

        public string Simpe()
        {
            Random randm = new Random();
            int CSimpeP1 = randm.Next(11111111, 99999999);
            int CSimpeP2 = randm.Next(11111111, 99999999);
            return "0" + CSimpeP1 + CSimpeP2;
        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts","<script>alert('Guardado');</script>");
            Limpiar();
        }

        protected void Actualizar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Actualizado');</script>");
            Limpiar();
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Eliminado');</script>");
            Limpiar();
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Elemento Encontrado');</script>");
            Limpiar();
        }
    }
}