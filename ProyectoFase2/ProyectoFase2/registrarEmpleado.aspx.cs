using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class registrarEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Servicio1 web = new Servicio1();
            web.insertarEmpleado(TextBox1.Text, TextBox2.Text, float.Parse(TextBox3.Text), TextBox4.Text, TextBox5.Text, Convert.ToInt32(TextBox6.Text), TextBox7.Text, TextBox8.Text, TextBox9.Text, TextBox10.Text);
            
        }
    }
}