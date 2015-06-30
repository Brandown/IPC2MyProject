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
            if (variable.logear(txtUsuario.Text, TextBox1.Text))
            {
                
                Response.Redirect("/principalUsuario.aspx");
            }
            else if (variable.loginEmpleado(txtUsuario.Text, TextBox1.Text))
            {
                Response.Redirect("/principalEmpleado.aspx");
            }else if(variable.loginDirector(txtUsuario.Text, TextBox1.Text)){
                Response.Redirect("/Director.aspx");
            }else if(variable.loginAdmin(txtUsuario.Text, TextBox1.Text))
            {
                Response.Redirect("/principalAdmin.aspx");
            }
           

            variable.recuperarCasilla(txtUsuario.Text, TextBox1.Text);

            
        }
    


    }
}