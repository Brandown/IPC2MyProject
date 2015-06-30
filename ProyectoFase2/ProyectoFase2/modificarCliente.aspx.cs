using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class modificarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Session["IdCasilla"] = txtCasilla.Text;

            Servicio1 service = new Servicio1();
            service.modificarCliente(Convert.ToInt32(txtCasilla.Text), txtNombre.Text, txtApellido.Text, txtDomicilio.Text, Convert.ToInt32(txtTelefono.Text), Convert.ToInt32(txtTarjeta.Text));
        }
    }
}