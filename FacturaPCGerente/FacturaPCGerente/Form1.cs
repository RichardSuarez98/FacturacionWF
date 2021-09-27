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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void btnAgregarDetalle_Click(object sender, EventArgs e)
        {
            decimal Subtotal = 0;

            DataGridViewRow fila = new DataGridViewRow();
            fila.CreateCells(dgvFactura);
            fila.Cells[0].Value = txtProducto.Text;
            fila.Cells[1].Value = Convert.ToDecimal(txtPrecio.Text);
            fila.Cells[2].Value = Convert.ToInt32(txtCantidad.Text);
            fila.Cells[3].Value = Convert.ToInt32(txtCantidad.Text) * Convert.ToDecimal(txtPrecio.Text);
            dgvFactura.Rows.Add(fila);
            
            foreach (DataGridViewRow row in dgvFactura.Rows)
            {
                Subtotal += Convert.ToDecimal(row.Cells["clmTotal"].Value);
            }
            btnAgregarBaseImponible.Enabled = true;
            txtBaseImponible.Enabled = true;
            btnGenerarFactura.Enabled = true;
            btnReporte.Enabled = true;
            txtSubtotal.Text = Convert.ToString(Subtotal);
            txtTotal.Text = Convert.ToString(Subtotal);
            txtProducto.Text = "";
            txtPrecio.Text = "";
            txtCantidad.Text = "";
        }

        private void btnGenerarFactura_Click(object sender, EventArgs e)
        {
           /* SaveFileDialog guardar = new SaveFileDialog();
            guardar.FileName = DateTime.Now.ToString("ddMMyyyyHHmmss") + ".pdf";
            guardar.ShowDialog();
            */
            tbl_Factura f = new tbl_Factura();
            clsDALFactura fac = new clsDALFactura();
            var detalle = new List<tbl_Detalle>();
            tbl_Detalle d = new tbl_Detalle();

            try
            {
                f.NombreCliente = txtCliente.Text;
                f.Cedula = txtCedula.Text;
                f.FechaEmision = DateTime.Now; //Convert.ToDateTime(txtFecha.Text);
                foreach (DataGridViewRow row in dgvFactura.Rows)
                {
                    detalle.Add(new tbl_Detalle() { 

                        NombreProducto= row.Cells["clmProducto"].Value.ToString(),
                        Cantidad=Convert.ToInt32( row.Cells["clmCantidad"].Value),
                        Precio=Convert.ToDecimal(row.Cells["clmPrecio"].Value),
                        Total= Convert.ToInt32(row.Cells["clmCantidad"].Value)* Convert.ToDecimal(row.Cells["clmPrecio"].Value),        
                    });
                    f.SubTotal += Convert.ToDecimal(row.Cells["clmTotal"].Value);
                    f.Iva = Convert.ToDecimal( txtBaseImponible.Text);
                    f.Total = ((f.SubTotal * f.Iva)/100)+f.SubTotal;
                }
                f.tbl_Detalle = detalle;
                fac.AgregarFactura(f);
                MessageBox.Show("Exito al Guardar");
                this.Refreshh();

            }
            catch (Exception ex)
            {
                MessageBox.Show("ocurrio un error al guardar:  " + ex.Message);
            }
        }

        private void Refreshh()
        {
            txtCliente.Text = "";
            txtCedula.Text = "";
            //txtFecha.Text = "";
            txtSubtotal.Text = "";
            txtBaseImponible.Enabled = false;
            txtBaseImponible.Text = "";
            txtTotal.Text = "";
            dgvFactura.Rows.Clear();
            txtBaseImponible.Enabled = false;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            txtSubtotal.Enabled = false;
            txtBaseImponible.Enabled = false;
            txtTotal.Enabled = false;
            btnAgregarBaseImponible.Enabled = false;
            btnReporte.Enabled = false;
            btnGenerarFactura.Enabled = false;
        }

        private void btnAgregarBaseImponible_Click(object sender, EventArgs e)
        {
            decimal subtotal = 0;
           // decimal total = 0;

            foreach (DataGridViewRow row in dgvFactura.Rows)
            {
                subtotal += Convert.ToDecimal(row.Cells["clmTotal"].Value);
            }
           
           decimal total =( (Convert.ToDecimal( txtBaseImponible.Text) * subtotal)/100)+subtotal;
            txtTotal.Text =Convert.ToString(total);
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnReporte_Click(object sender, EventArgs e)
        {
            tbl_Factura datos = new tbl_Factura();
            tbl_Detalle datosDeta = new tbl_Detalle();

            reportFactura frm2 = new reportFactura();
            datos.NombreCliente = txtCliente.Text;
            datos.Cedula = txtCedula.Text;
            datos.FechaEmision = DateTime.Now;
            datos.SubTotal = Convert.ToDecimal( txtSubtotal.Text);
            datos.Iva =Convert.ToDecimal(txtBaseImponible.Text);
            datos.Total = Convert.ToDecimal(txtTotal.Text);

            foreach (DataGridViewRow row in dgvFactura.Rows)
            {
                datosDeta.NombreProducto = row.Cells["clmProducto"].Value.ToString();
                datosDeta.Cantidad = Convert.ToInt32(row.Cells["clmCantidad"].Value);
                datosDeta.Precio = Convert.ToDecimal(row.Cells["clmPrecio"].Value);
                datosDeta.Total = Convert.ToInt32(row.Cells["clmCantidad"].Value) * Convert.ToDecimal(row.Cells["clmPrecio"].Value);
            }

            frm2.datos.Add(datos);
            frm2.datosDeta.Add(datosDeta);
            frm2.Show();
        }




    }
}
