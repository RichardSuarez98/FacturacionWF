using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FacturaPCGerente
{
    public class clsDALFactura
    {
        public void AgregarFactura(tbl_Factura factura)
        {
            using (FacturaPcGerenteEntities db = new FacturaPcGerenteEntities()) {

                using (var transaction= db.Database.BeginTransaction())
                {
                    decimal total = 0;
                    var venta = new tbl_Factura();
                    venta.FechaEmision = DateTime.Now; //factura.FechaEmision;
                    venta.NombreCliente = factura.NombreCliente;
                    venta.Cedula = factura.Cedula;
                    venta.Iva = factura.Iva;
                    venta.SubTotal = 0;
                    venta.Total = 0;
                    db.tbl_Factura.Add(venta);
                    db.SaveChanges();
                    foreach (var detalle in factura.tbl_Detalle)
                    {
                        var dt = new tbl_Detalle();
                        dt.NombreProducto = detalle.NombreProducto;
                        dt.Cantidad = detalle.Cantidad;
                        dt.Precio = detalle.Precio;
                        dt.Total = detalle.Cantidad * dt.Precio;
                        dt.idFactura = venta.idFactura;
                        total += (decimal)dt.Total;
                        db.tbl_Detalle.Add(dt);
                        db.SaveChanges();
                    }
                    tbl_Factura f = db.tbl_Factura.Find(venta.idFactura);
                    f.SubTotal = total;
                    f.Iva = venta.Iva;  //(decimal)0.12;
                    f.Total = ((f.SubTotal * f.Iva)/100)+ f.SubTotal;
                    db.Entry(f).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    transaction.Commit();

                }

            }


        }


    }






}
