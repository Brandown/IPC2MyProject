using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class paqueteIndividual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["aux"] = txtPaquete.Text;
        }

        protected void btnFoto_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(MapPath(FileUpload1.FileName));
            string linea = FileUpload1.FileName;
            Servicio1 ws = new Servicio1();
            ws.AgregarFoto(linea, Convert.ToInt32(txtPaquete.Text));

            Server.Transfer("paqueteIndividual.aspx");
        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Servicio1 serv = new Servicio1();
            
                serv.estadoFinal(Convert.ToInt32(txtPaquete.Text));
                Server.Transfer("paqueteIndividual.aspx");
            
        }

        protected void btnPrecio_Click(object sender, EventArgs e)
        {
            Servicio1 ws = new Servicio1();
            
                ws.AgregarPrecio(float.Parse(txtPrecio.Text), Convert.ToInt32(txtPaquete.Text));
                Server.Transfer("paqueteIndividual.aspx");
        }
    }
}