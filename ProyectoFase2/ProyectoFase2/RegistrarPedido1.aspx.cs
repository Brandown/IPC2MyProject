using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class RegistrarPedido1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Servicio1 service = new Servicio1();
            FileUpload1.SaveAs(MapPath(FileUpload1.FileName));
            string archivo = MapPath(FileUpload1.FileName);
            service.insertarPedidoCSV(archivo);
        }
    }
}