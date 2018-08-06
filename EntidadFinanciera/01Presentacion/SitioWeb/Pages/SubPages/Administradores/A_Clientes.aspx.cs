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
        public void Limpiar()
        {

            Cedula.Text = "";
            Nombre.Text = "";
            PrimerApellido.Text = "";
            SegundoApellido.Text = "";
            FechaNac.Text = "1";
            Telefono.Text = "";

        }

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
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Eliminado');</script>");
        }
    }
}