﻿using System.Collections.Generic;
using System;

namespace TawredatProject.Models
{
    public class SalesInvGetVM
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
        public virtual ICollection<SalesInvProGetVM> SalesInvProGetVMs { get; set; }
    }
}
