using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class Loggin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.Service service = new localhost.Service();

            if(service.loggin(TextBox1.Text,TextBox2.Text)){
                Response.Redirect("/Cotizacion.aspx");

            }
        }
    }
}