//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FacturaPCGerente
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Factura
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public tbl_Factura()
        {
            this.tbl_Detalle = new HashSet<tbl_Detalle>();
        }
    
        public int idFactura { get; set; }
        public string NombreCliente { get; set; }
        public string Cedula { get; set; }
        public Nullable<System.DateTime> FechaEmision { get; set; }
        public Nullable<decimal> SubTotal { get; set; }
        public Nullable<decimal> Iva { get; set; }
        public Nullable<decimal> Total { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tbl_Detalle> tbl_Detalle { get; set; }
    }
}