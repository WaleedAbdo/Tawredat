using System.Collections.Generic;
using System;

namespace TawredatProject.Models
{
    public class ReOrderAddVM
    {

        public Guid? SalesInvoiceId { get; set; }
        public decimal TotalInvoiceValue  { get; set; }
            public decimal DiscValue { get; set; }//"discountPercent": "30%",
        //DiscValue   { get; set; }
        //    public decimal DiscValue { get; set; }//"discountPercent": "30%",
         public decimal totalTax   { get; set; }
        public string taxrate   { get; set; }
        public decimal TotalAfterTax  { get; set; }
        public decimal deliverycost   { get; set; }
        public decimal totalAfter   { get; set; }

           //public decimal TotalInvoiceAfter { get; set; }//"totalAfter": 1130.800
           // public decimal DiscValue { get; set; }//"discountPercent": "30%",
           // public decimal TaxValue { get; set; }//"totalTax": 135.800,
           // public decimal DeliveryValue { get; set; }//"deliverycost": 25,
           // public decimal TotalAfterTax { get; set; }//"totalValueAfter": 970.0,
           // public virtual ICollection<ReOrderAddProMV> SalesInvProMVs { get; set; }
           // // public List<string> SalesInvProMVs { get; set; }
        
    }
    public class ReOrderAddProMV
    {
        public Guid? SalesInvoiceProductId { get; set; }
        //    public string SalesName { get; set; }
        //    public Guid? SalesInvoiceId { get; set; }
        //    public string DelivryDate { get; set; }
        //    public string Id { get; set; }
        //    public string Name { get; set; }
        //    public Guid? DeliveryManId { get; set; }
        //    public string DeliveryManName { get; set; }
        //    public Guid? SupplierId { get; set; }
        //    public string SupplierName { get; set; }
        //    public Guid? ProductId { get; set; }
        //    public string ProductName { get; set; }
        //    public string ProductImage { get; set; }
        //    public string ProductPrice { get; set; }
        //    public string Promocode { get; set; }
        //    public DateTime? StartDate { get; set; }
        //    public DateTime? EndDate { get; set; }
        //    public string DiscountPercent { get; set; }
        //    public string ProductPriceAfterDiscount { get; set; }
        //    public string ProductQty { get; set; }
        //    public Guid? ProductCategoryId { get; set; }
        //    public string ProductCategoryName { get; set; }
        //    public Guid? PaymnetMethodId { get; set; }
        //    public string PaymnetMethodName { get; set; }
        //    public string TotalProductValue { get; set; }
        //    public string DeliveryAddress { get; set; }
        //    public string DeliveryStatus { get; set; }
        //    public string CreatedBy { get; set; }
        //    public string UpdatedBy { get; set; }
        //    public DateTime? CreatedDate { get; set; }
        //    public DateTime? UpdatedDate { get; set; }
        //    public string Notes { get; set; }
        //    public int? CurrentState { get; set; }
    }
    public class ReorderVM
    {
        public Guid? SalesInvoiceId { get; set; }
        public string Promocode { get; set; }
    }
}
