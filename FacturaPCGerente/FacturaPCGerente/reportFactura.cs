using Microsoft.Reporting.WinForms;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FacturaPCGerente
{
    public partial class reportFactura : Form
    {
        public List<tbl_Factura> datos = new List<tbl_Factura>();
        public List<tbl_Detalle> datosDeta = new List<tbl_Detalle>();

        public reportFactura()
        {
            InitializeComponent();
        }

        private void reportFactura_Load(object sender, EventArgs e)
        {

            reportViewer1.LocalReport.DataSources.Clear();
            reportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet1",datos));
            reportViewer1.LocalReport.DataSources.Add(new ReportDataSource("DataSet2", datosDeta));
            this.reportViewer1.RefreshReport();



        }

        private void tbl_DetalleBindingSource_CurrentChanged(object sender, EventArgs e)
        {

        }
    }
}
