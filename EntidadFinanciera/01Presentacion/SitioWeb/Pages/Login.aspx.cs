using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01Presentacion.SitioWeb.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            if (Usuario.Text.Equals("Admin") && Password.Text.Equals("1234"))
            {
                Response.Redirect("Administradores.aspx");
            }
            else if (Usuario.Text.Equals("Cliente") && Password.Text.Equals("1234"))
            {
                Response.Redirect("Clientes.aspx");
            }
            else if (Usuario.Text.Equals("Usuario") && Password.Text.Equals("1234"))
            {
                Response.Redirect("Usuarios.aspx");
            }
            else
            {
                error.Text = "Error en contrasena o Usuario";
            }

            #region Login
            /*try
            {
                #region ProcesoLogin
                DataTable dt = new DataTable();
                objE.iduser = Usuario.Text;
                objE.password = Password.Text;
                //objE.typeuser = comboTipo.Text;
                dt = objLN.LNlogin(objE);

                //creo objeto Usuario
                USUARIOS user = new USUARIOS();
                user.NOMBRE = dt.Rows[0][1].ToString(); //asigno el elemento [0][1] del dt al objeto use en su atributo nombre
                user.IDUSUARIO = Convert.ToInt32(dt.Rows[0][0].ToString());

                if (dt.Rows.Count == 1)
                {
                    this.Hide();
                    if (dt.Rows[0][4].ToString() == "ADMIN" && dt.Rows[0][5].ToString() == "ACTIVO")
                    {
                        new Administrador(user).Show();
                    }
                    else if (dt.Rows[0][4].ToString() == "USER" && dt.Rows[0][5].ToString() == "ACTIVO")
                    {
                        new Usuario(user).Show();
                    }
                    else if (dt.Rows[0][4].ToString() == "CLIENT" && dt.Rows[0][5].ToString() == "ACTIVO")
                    {
                        new Cliente(user).Show();
                    }
                    else
                    {
                        MessageBox.Show("Usuario Inactivo",
                                   "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        this.Show();
                    }
                }
        
                #endregion

            }
            catch (Exception ex)
            {
                MessageBox.Show("Usuario o contraseña Invalidos", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }*/
            #endregion
        }
    }
}