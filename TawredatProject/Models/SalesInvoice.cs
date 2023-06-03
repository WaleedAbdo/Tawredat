using System;
using System.Collections.Generic;

namespace TawredatProject.Models
{
    public class SalesInvoice
    {
        public Guid? SalesInvoiceId { get; set; }
        public string DelivryDate { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public Guid? DeliveryManId { get; set; }
        public string? DeliveryManName { get; set; }
        public Guid? SupplierId { get; set; }
        public string SupplierName { get; set; }
        public int PaymnetMethodId { get; set; }
        public string PaymnetMethodName { get; set; }
        public string TotalInvoiceValue { get; set; }
        public string DeliveryAddress { get; set; }
        public string DeliveryStatus { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string Notes { get; set; }
        public int? CurrentState { get; set; }
        public string Promocode { get; set; }
        public  List <string>item { get; set; }
        public Guid DeliveryAddressID { get; set; }
        //  public virtual ICollection<SalesInvProMV> SalesInvProMVs { get; set; }
        // public List<string> SalesInvProMVs { get; set; }
    }
   

}
