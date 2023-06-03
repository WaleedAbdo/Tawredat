using System;
using System.Collections.Generic;

#nullable disable

namespace Domains
{
    public partial class TbSalesInvoice
    {
        public Guid? SalesInvoiceId { get; set; }
        public string DelivryDate { get; set; }
        public string Id { get; set; }
        public string Name { get; set; }
        public Guid? DeliveryManId { get; set; }
        public string DeliveryManName { get; set; }
        public Guid? SupplierId { get; set; }
        public string SupplierName { get; set; }
        public Guid? PaymnetMethodId { get; set; }
        public string PaymnetMethodName { get; set; }
        public string Promocode { get; set; }//"discountPercent": "30%",
        public decimal TotalInvoiceAfter { get; set; }//"totalAfter": 1130.800
        public decimal DiscValue { get; set; }//"discountPercent": "30%",
        public decimal TaxValue { get; set; }//"totalTax": 135.800,
        public decimal DeliveryValue { get; set; }//"deliverycost": 25,
        public decimal TotalAfterTax { get; set; }//"totalValueAfter": 970.0,
        public string TotalInvoiceValue { get; set; }// "totalInvoiceValue": "1000",
        public string DeliveryAddress { get; set; }
        public string DeliveryStatus { get; set; }
        public string CreatedBy { get; set; }
        public string UpdatedBy { get; set; }
        public DateTime? CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string Notes { get; set; }
        public int? CurrentState { get; set; }
    }
}
