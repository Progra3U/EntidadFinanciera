using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01Presentacion.SitioWeb.Pages.SubPages.Administradores
{
    public partial class A_Usuarios : System.Web.UI.Page
    {
        public void Limpiar()
        {
            Usuario.Text = "";
            Nombre.Text = "";
            Contrasena.Text = "";
            Contrasena2.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Guardado');</script>");
            Limpiar();
        }

        protected void Actualizar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Actualizado');</script>");
            Limpiar();
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Elemento Encontrado');</script>");
            Limpiar();
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Eliminado');</script>");
            Limpiar();
        }
    }
}