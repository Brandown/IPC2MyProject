using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFase2
{
    public partial class ReportePaquete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ReportDocument documento = new ReportDocument();
            documento.Load(@"C:\Users\brandon\documents\visual studio 2013\Projects\ProyectoFase2\ProyectoFase2\Reporte1.rpt");

            ExportFormatType formato = ExportFormatType.PortableDocFormat;
            documento.ExportToDisk(formato,@"C:\Users\brandon\Documents\Visual Studio 2013\Projects\ProyectoFase2\ReporteCategoria.pdf");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ReportDocument documento = new ReportDocument();
            documento.Load(@"C:\Users\brandon\documents\visual studio 2013\Projects\ProyectoFase2\ProyectoFase2\Reporte2.rpt");

            ExportFormatType formato = ExportFormatType.PortableDocFormat;
            documento.ExportToDisk(formato, @"C:\Users\brandon\Documents\Visual Studio 2013\Projects\ProyectoFase2\ReporteSucursal.pdf");
        }

        protected void btnAdmin_Click(object sender, EventArgs e)
        {
            ReportDocument documento = new ReportDocument();
            documento.Load(@"C:\Users\brandon\documents\visual studio 2013\Projects\ProyectoFase2\ProyectoFase2\Reporte3.rpt");

            ExportFormatType formato = ExportFormatType.PortableDocFormat;
            documento.ExportToDisk(formato, @"C:\Users\brandon\Documents\Visual Studio 2013\Projects\ProyectoFase2\ReporteAdministrativoPart1.pdf");
        }

        protected void btnTop_Click(object sender, EventArgs e)
        {
            ReportDocument documento = new ReportDocument();
            documento.Load(@"C:\Users\brandon\documents\visual studio 2013\Projects\ProyectoFase2\ProyectoFase2\Reporte4.rpt");

            ExportFormatType formato = ExportFormatType.PortableDocFormat;
            documento.ExportToDisk(formato, @"C:\Users\brandon\Documents\Visual Studio 2013\Projects\ProyectoFase2\ReporteTop5.pdf");
        }

        protected void btnFactura_Click(object sender, EventArgs e)
        {
            ReportDocument documento = new ReportDocument();
            documento.Load(@"C:\Users\brandon\documents\visual studio 2013\Projects\ProyectoFase2\ProyectoFase2\Facturacion.rpt");

            ExportFormatType formato = ExportFormatType.PortableDocFormat;
            documento.ExportToDisk(formato, @"C:\Users\brandon\Documents\Visual Studio 2013\Projects\ProyectoFase2\Factura.pdf");
        }

        protected void btnAdmin2_Click(object sender, EventArgs e)
        {
            ReportDocument documento = new ReportDocument();
            documento.Load(@"C:\Users\brandon\documents\visual studio 2013\Projects\ProyectoFase2\ProyectoFase2\Reporte3_2.rpt");

            ExportFormatType formato = ExportFormatType.PortableDocFormat;
            documento.ExportToDisk(formato, @"C:\Users\brandon\Documents\Visual Studio 2013\Projects\ProyectoFase2\ReporteAdministrativoPart2.pdf");
        }

        
    }
}