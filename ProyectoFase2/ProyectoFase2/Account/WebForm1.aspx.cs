using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            localhost.Service servicio = new localhost.Service();
            if(servicio.loggin(txt1.Text,txt2.Text)){
                Response.Redirect("/Cotizacion.aspx");

            }
        }
    }
}