using System;

namespace TawredatProject.Models
{
    public class GetPurchasingCartVM
    {
        public Guid? ProductId { get; set; }
        public string ProductPrice { get; set; }
        public string ProductName { get; set; }
        public string ProductImage { get; set; }
        public int? Quantity { get; set; }
        public string SupplierName { get; set; }
        public string ProductEvaluationStarts { get; set; }
        public string ProductEvaluationText { get; set; }
        public string ProductPriceAfterDiscount { get; set; }
        public bool IsFavourit { get; set; }

    }
}
