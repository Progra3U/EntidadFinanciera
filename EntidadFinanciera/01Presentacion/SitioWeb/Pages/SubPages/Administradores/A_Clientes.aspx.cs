using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;  //Librerias para envio de correo electronico
using System.Net.Mail;
using System.Threading; //Hilos de ejecucion

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

        #region Correos
        private void EnviarCorreoElectronicos()
        {
            SmtpClient envio = new SmtpClient(); //Configuracion del ENVIO 
            MailMessage msj = new MailMessage(); //Configuracion del MSJ
            string CorreoAEnviar = Correo.Text;
            string Mensaje = "";

            try
            {
                //Informacion del correo a enviar
                msj = new MailMessage();
                msj.To.Add(new MailAddress(CorreoAEnviar));  //modificar 
                msj.From = new MailAddress("enviocorreos2019@gmail.com");
                msj.Subject = "Apertura de Cuenta para "+ Nombre.Text; //modificar
                msj.Body = "<b> Hola... Este es un correo de pruebas </b>"+ Mensaje; //modificar
                msj.IsBodyHtml = true;
                msj.Priority = MailPriority.Normal;

                //Configuracion SMTP
                envio.Host = "smtp.gmail.com";
                envio.Port = 587;
                envio.EnableSsl = true;
                envio.UseDefaultCredentials = false;
                envio.Credentials = new NetworkCredential("enviocorreos2019@gmail.com",
                                                            "@UAM123456789");
                //envio
                envio.Send(msj);

                msj.Dispose();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts","<script>alert('Guardado');</script>");
            Limpiar();

            Thread hilo = new Thread(EnviarCorreoElectronicos);
            hilo.Start(); //Inicia la ejecucion
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