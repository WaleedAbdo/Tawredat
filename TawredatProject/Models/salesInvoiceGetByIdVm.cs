using System;
using System.Collections.Generic;

namespace TawredatProject.Models
{
    public class salesInvoiceGetByIdVm
    {
        public Guid? SalesInvoiceId { get; set; }
    }
    public class salesInvoiceMaserVm
    {
        public string DeliveryAddress { get; set; }
        public string PhoneNumber { get; set; }
        public string PaymnetMethodName { get; set; }
        public string TotalInvoiceValue { get; set; }
        public virtual ICollection<salesInvoicedetailsVm>  InvoicedetailsVms { get; set; }
    }
    public class salesInvoicedetailsVm
    {
        public string ProductName { get; set; }
        public string ProductImage { get; set; }
       // public string ProductPrice { get; set; }
        public string SupplierName { get; set; }

    }
    public class AllsalessVm
    {
        public Guid? SalesInvoiceId { get; set; }
        public string supplierName { get; set; }
        public string SupplierImage { get; set; }
        // public string ProductPrice { get; set; }
        public string SupplierEvaluationstarNo{ get; set; }
        public string CreatedDate { get; set; }
        public string TotalQuntity { get; set;}
        public string status { get; set; }
        public string ProductName { get; set; }
        public decimal TotalInvoiceAfter { get; set; }

    }
    public class salesOrderMaserVm
    {
        public Guid? SalesInvoiceId { get; set; }
        public string DeliveryAddress { get; set; }
        public string PhoneNumber { get; set; }
       public string PaymnetMethodName { get; set; }
        public string TotalInvoiceValue { get; set; }
        public decimal DiscValue { get; set; }//"discountPercent": "30%",
        public decimal TaxValue { get; set; }//"totalTax": 135.800,
        public decimal TotalAfterTax { get; set; }//"totalValueAfter": 970.0,
        public decimal DeliveryValue { get; set; }//"deliverycost": 25,
        public decimal TotalInvoiceAfter { get; set; }//"totalAfter": 1130.800
   
        public virtual ICollection<salesOrderdetailsVm> InvoicedetailsVms { get; set; }
    }
    public class salesOrderdetailsVm
    {
        public string ProductName { get; set; }
        public string ProductImage { get; set; }
        // public string ProductPrice { get; set; }
        public string SupplierName { get; set; }
        public Guid? ProductId { get; set; }
        public string ProductPrice { get; set; }
        public int? Quantity { get; set; }
        public string ProductEvaluationStarts { get; set; }
        public string ProductEvaluationText { get; set; }
        public string ProductPriceAfterDiscount { get; set; }
        public bool IsFavourit { get; set; }

    }


}
