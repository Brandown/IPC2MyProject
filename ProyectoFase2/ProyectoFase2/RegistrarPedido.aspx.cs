using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class RegistrarPedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVer_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Servicio1 dragonball = new Servicio1();
            dragonball.insertarPedido(txtDescrip.Text,int.Parse(txtCasi.Text),float.Parse(txtPeso.Text),float.Parse(txtPrecio.Text),"No Enviado",Convert.ToInt32(txtLote.Text));

           
        }
    }
}