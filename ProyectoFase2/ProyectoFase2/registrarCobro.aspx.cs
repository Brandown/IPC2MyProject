using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class registrarCobro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Servicio1 plus = new Servicio1();
            plus.guardarImpuesto(TextBox1.Text, float.Parse(TextBox2.Text));
        }
    }
}