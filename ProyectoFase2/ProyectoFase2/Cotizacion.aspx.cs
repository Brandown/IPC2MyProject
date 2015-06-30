using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class Cotizacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            
            double resultado = (double.Parse(txtPeso.Text) * 5) + (double.Parse(DropDownList1.SelectedValue) * double.Parse(txtCosto.Text)) + 0.05 * ((double.Parse(txtPeso.Text) * 5) + (double.Parse(DropDownList1.SelectedValue) * double.Parse(txtCosto.Text)));
            double.Parse(txtPeso.Text);
            txtTotal.Text = resultado.ToString();
        }
    }
}