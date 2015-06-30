using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace ProyectoFase2
{
    public partial class RegistroCliente : System.Web.UI.Page
    {

        
        SqlConnection con = new SqlConnection("Data Source = localhost; Initial Catalog = QuetzalExpress; Integrated Security= SSPI");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           

            

            Servicio1 servicio = new Servicio1();

            servicio.insertarCliente(txtNombres.Text, txtApellidos.Text, Int32.Parse(txtTelefono.Text), txtMail.Text, txtResi.Text, txtNIT.Text, Int32.Parse(txtTarjeta.Text), Int32.Parse(txtDPI.Text));
            servicio.insertarUsuario(txtUsuario.Text, txtContraseña.Text, "Cliente", "Aceptado");

            }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            

        }



        
    }
}