using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class principalEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btbpaq_Click(object sender, EventArgs e)
        {
            Response.Redirect("/RegistrarPedido.aspx");
        }
    }
}