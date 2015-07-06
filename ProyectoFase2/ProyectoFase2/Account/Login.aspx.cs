using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Servicio1 variable = new Servicio1();
            if (variable.loggin(txtUsuario.Text, txtcontra.Text))
            {
                Session["Cod"] = variable.getcodigo(txtUsuario.Text, txtcontra.Text);
               
                Response.Redirect("/principalUsuario.aspx");
            }
            else if (variable.logear(txtUsuario.Text, txtcontra.Text))
            {
                Session["Cod"] = variable.getcodigoempleado(txtUsuario.Text, txtcontra.Text);

                Response.Redirect("/principalEmpleado.aspx");
            }

        }
    


    }
}
//https://www.youtube.com/watch?v=npDBgXrlCys