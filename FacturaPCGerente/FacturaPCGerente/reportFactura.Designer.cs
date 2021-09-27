
namespace FacturaPCGerente
{
    partial class reportFactura
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.tbl_FacturaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.tbl_DetalleBindingSource = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.tbl_FacturaBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbl_DetalleBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tbl_FacturaBindingSource
            // 
            this.tbl_FacturaBindingSource.DataSource = typeof(FacturaPCGerente.tbl_Factura);
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.tbl_FacturaBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "FacturaPCGerente.Report1.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(464, 501);
            this.reportViewer1.TabIndex = 0;
            // 
            // tbl_DetalleBindingSource
            // 
            this.tbl_DetalleBindingSource.DataSource = typeof(FacturaPCGerente.tbl_Detalle);
            this.tbl_DetalleBindingSource.CurrentChanged += new System.EventHandler(this.tbl_DetalleBindingSource_CurrentChanged);
            // 
            // reportFactura
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.ClientSize = new System.Drawing.Size(464, 501);
            this.Controls.Add(this.reportViewer1);
            this.MaximizeBox = false;
            this.Name = "reportFactura";
            this.Text = "reportFactura";
            this.Load += new System.EventHandler(this.reportFactura_Load);
            ((System.ComponentModel.ISupportInitialize)(this.tbl_FacturaBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbl_DetalleBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource tbl_DetalleBindingSource;
        private System.Windows.Forms.BindingSource tbl_FacturaBindingSource;
    }
}