using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class agregarPaquete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Servicio1 servicio = new Servicio1();
            servicio.InsertarPaquete(Convert.ToInt32(txtImp.Text), Convert.ToInt32(txtPed.Text), txtNom.Text, txtEst.Text, float.Parse(txtPeso.Text), txtExiste.Text);
        }
    }
}