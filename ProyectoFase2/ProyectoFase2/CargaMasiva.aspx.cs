using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class CargaMasiva : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnImpuestos_Click(object sender, EventArgs e)
        {
            Servicio1 nuevo = new Servicio1();
            FileUpload2.SaveAs(MapPath(FileUpload2.FileName));
            string temp = MapPath(FileUpload2.FileName);
            nuevo.cargarImpuestos(temp);
        }

        protected void btnProductos_Click(object sender, EventArgs e)
        {
            Servicio1 nue = new Servicio1();
            FileUpload1.SaveAs(MapPath(FileUpload1.FileName));
            string tempo = MapPath(FileUpload1.FileName);
            nue.insertarPedidoCSV(tempo);
        }

        protected void btnEmpleado_Click(object sender, EventArgs e)
        {
            Servicio1 nuevito = new Servicio1();
            FileUpload3.SaveAs(MapPath(FileUpload3.FileName));
            string temp = MapPath(FileUpload3.FileName);
            nuevito.cargarImpuestos(temp);
        }
    }
}